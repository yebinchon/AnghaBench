
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ BYTE ;


 size_t DISTSIZE ;
 int RAND (int *) ;

__attribute__((used)) static void RAND_genDist(U32* seed, BYTE* dist, double weight)
{
    size_t i = 0;
    size_t statesLeft = DISTSIZE;
    BYTE symb = (BYTE) (RAND(seed) % 256);
    BYTE step = (BYTE) ((RAND(seed) % 256) | 1);

    while (i < DISTSIZE) {
        size_t states = ((size_t)(weight * statesLeft)) + 1;
        size_t j;
        for (j = 0; j < states && i < DISTSIZE; j++, i++) {
            dist[i] = symb;
        }

        symb += step;
        statesLeft -= states;
    }
}
