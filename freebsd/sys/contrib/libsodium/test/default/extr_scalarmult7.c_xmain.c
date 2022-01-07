
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int crypto_scalarmult_curve25519 (int ,unsigned int*,int ) ;
 int memcmp (int ,int ,int) ;
 int out1 ;
 int out2 ;
 int p1 ;
 int p2 ;
 int printf (char*,int) ;
 unsigned int* scalar ;

int
main(void)
{
    int ret;

    scalar[0] = 1U;
    ret = crypto_scalarmult_curve25519(out1, scalar, p1);
    assert(ret == 0);
    ret = crypto_scalarmult_curve25519(out2, scalar, p2);
    assert(ret == 0);
    printf("%d\n", !!memcmp(out1, out2, 32));

    return 0;
}
