
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int scryptBlockMix (int*,int*,int) ;

__attribute__((used)) static void scryptROMix(unsigned char *B, uint64_t r, uint64_t N,
                        uint32_t *X, uint32_t *T, uint32_t *V)
{
    unsigned char *pB;
    uint32_t *pV;
    uint64_t i, k;


    for (pV = V, i = 0, pB = B; i < 32 * r; i++, pV++) {
        *pV = *pB++;
        *pV |= *pB++ << 8;
        *pV |= *pB++ << 16;
        *pV |= (uint32_t)*pB++ << 24;
    }

    for (i = 1; i < N; i++, pV += 32 * r)
        scryptBlockMix(pV, pV - 32 * r, r);

    scryptBlockMix(X, V + (N - 1) * 32 * r, r);

    for (i = 0; i < N; i++) {
        uint32_t j;
        j = X[16 * (2 * r - 1)] % N;
        pV = V + 32 * r * j;
        for (k = 0; k < 32 * r; k++)
            T[k] = X[k] ^ *pV++;
        scryptBlockMix(X, T, r);
    }

    for (i = 0, pB = B; i < 32 * r; i++) {
        uint32_t xtmp = X[i];
        *pB++ = xtmp & 0xff;
        *pB++ = (xtmp >> 8) & 0xff;
        *pB++ = (xtmp >> 16) & 0xff;
        *pB++ = (xtmp >> 24) & 0xff;
    }
}
