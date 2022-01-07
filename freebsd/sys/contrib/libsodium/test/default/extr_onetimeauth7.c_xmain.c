
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* a ;
 int* c ;
 int crypto_onetimeauth (int*,int*,int,int ) ;
 int crypto_onetimeauth_keygen (int ) ;
 scalar_t__ crypto_onetimeauth_verify (int*,int*,int,int ) ;
 int key ;
 int printf (char*,int) ;
 int rand () ;
 int randombytes_buf (int*,int) ;

int
main(void)
{
    int clen;

    for (clen = 0; clen < 1000; ++clen) {
        crypto_onetimeauth_keygen(key);
        randombytes_buf(c, clen);
        crypto_onetimeauth(a, c, clen, key);
        if (crypto_onetimeauth_verify(a, c, clen, key) != 0) {
            printf("fail %d\n", clen);
            return 100;
        }
        if (clen > 0) {
            c[rand() % clen] += 1 + (rand() % 255);
            if (crypto_onetimeauth_verify(a, c, clen, key) == 0) {
                printf("forgery %d\n", clen);
                return 100;
            }
            a[rand() % sizeof a] += 1 + (rand() % 255);
            if (crypto_onetimeauth_verify(a, c, clen, key) == 0) {
                printf("forgery %d\n", clen);
                return 100;
            }
        }
    }
    return 0;
}
