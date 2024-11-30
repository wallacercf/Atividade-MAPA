programa
{
    funcao inicio()
    {
        // Variáveis
        inteiro numTurmas, numAlunos, turma, aluno, turmaVencedora
        real nota, somaNotas, media, melhorMedia

        // Inicialização
        melhorMedia = -1
        turmaVencedora = -1

        // Entrada: número de turmas
        escreva("Quantas turmas existem no colégio? ")
        leia(numTurmas)

        // Verificar se há turmas
        se (numTurmas <= 0)
        {
            escreva("Não há turmas para calcular médias.\n")
            
        }

        // Para cada turma
        para (turma = 1; turma <= numTurmas; turma++)
        {
            escreva("Quantos alunos existem na turma ", turma, "? ")
            leia(numAlunos)

            // Verificar se há alunos na turma
            se (numAlunos <= 0)
            {
                escreva("A turma ", turma, " não possui alunos.\n")
            }
            senao
            {
                somaNotas = 0

                // Para cada aluno na turma
                para (aluno = 1; aluno <= numAlunos; aluno++)
                {
                    escreva("Digite a nota do aluno ", aluno, " da turma ", turma, ": ")
                    leia(nota)
                    somaNotas = somaNotas + nota
                }

                // Calcular a média da turma
                media = somaNotas / numAlunos
                escreva("A média da turma ", turma, " é: ", media, "\n")

                // Verificar se é a melhor média
                se (media > melhorMedia)
                {
                    melhorMedia = media
                    turmaVencedora = turma
                }
            }
        }

        // Mostrar a turma vencedora
        se (turmaVencedora > 0)
        {
            escreva("A turma vencedora é a turma ", turmaVencedora, " com a média ", melhorMedia, "\n")
        }
        senao
        {
            escreva("Nenhuma turma válida foi registrada.\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */