
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alicesk ;
 int assert (int) ;
 int bobpk ;
 int crypto_scalarmult (scalar_t__*,int ,int ) ;
 scalar_t__* k ;
 int printf (char*,...) ;

int
main(void)
{
    int i;
    int ret;

    ret = crypto_scalarmult(k, alicesk, bobpk);
    assert(ret == 0);

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
    return 0;
}
