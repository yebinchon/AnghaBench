
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int escrypt_block_t ;


 int LOAD32_LE (int *) ;
 int STORE32_LE (int *,int ) ;
 int blkcpy (int *,int *,int) ;
 int blkxor (int *,int *,int) ;
 int blockmix_salsa8 (int *,int *,int *,size_t) ;
 int integerify (int *,size_t) ;

__attribute__((used)) static void
smix(uint8_t *B, size_t r, uint64_t N, uint32_t *V, uint32_t *XY)
{
    uint32_t *X = XY;
    uint32_t *Y = &XY[32 * r];
    uint32_t *Z = &XY[64 * r];
    uint64_t i;
    uint64_t j;
    size_t k;


    for (k = 0; k < 32 * r; k++) {
        X[k] = LOAD32_LE(&B[4 * k]);
    }

    for (i = 0; i < N; i += 2) {

        blkcpy((escrypt_block_t *) &V[i * (32 * r)], (escrypt_block_t *) X,
               128 * r);


        blockmix_salsa8(X, Y, Z, r);


        blkcpy((escrypt_block_t *) &V[(i + 1) * (32 * r)],
               (escrypt_block_t *) Y, 128 * r);


        blockmix_salsa8(Y, X, Z, r);
    }


    for (i = 0; i < N; i += 2) {

        j = integerify(X, r) & (N - 1);


        blkxor((escrypt_block_t *) X, (escrypt_block_t *) &V[j * (32 * r)],
               128 * r);
        blockmix_salsa8(X, Y, Z, r);


        j = integerify(Y, r) & (N - 1);


        blkxor((escrypt_block_t *) Y, (escrypt_block_t *) &V[j * (32 * r)],
               128 * r);
        blockmix_salsa8(Y, X, Z, r);
    }

    for (k = 0; k < 32 * r; k++) {
        STORE32_LE(&B[4 * k], X[k]);
    }
}
