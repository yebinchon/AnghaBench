
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alicepk_ ;
 int assert (int) ;
 int bobsk_ ;
 int crypto_scalarmult (unsigned char*,unsigned char*,unsigned char*) ;
 int crypto_scalarmult_BYTES ;
 int crypto_scalarmult_SCALARBYTES ;
 int memcpy (unsigned char*,int ,int ) ;
 int printf (char*,...) ;
 int sodium_free (unsigned char*) ;
 scalar_t__ sodium_malloc (int ) ;

int
main(void)
{
    unsigned char *k;
    unsigned char *bobsk;
    unsigned char *alicepk;
    int i;
    int ret;

    k = (unsigned char *) sodium_malloc(crypto_scalarmult_BYTES);
    bobsk = (unsigned char *) sodium_malloc(crypto_scalarmult_SCALARBYTES);
    alicepk = (unsigned char *) sodium_malloc(crypto_scalarmult_SCALARBYTES);
    assert(k != ((void*)0) && bobsk != ((void*)0) && alicepk != ((void*)0));

    memcpy(bobsk, bobsk_, crypto_scalarmult_SCALARBYTES);
    memcpy(alicepk, alicepk_, crypto_scalarmult_SCALARBYTES);

    ret = crypto_scalarmult(k, bobsk, alicepk);
    assert(ret == 0);

    sodium_free(alicepk);
    sodium_free(bobsk);

    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            printf(",");
        } else {
            printf(" ");
        }
        printf("0x%02x", (unsigned int) k[i]);
        if (i % 8 == 7) {
            printf("\n");
        }
    }
    sodium_free(k);

    return 0;
}
