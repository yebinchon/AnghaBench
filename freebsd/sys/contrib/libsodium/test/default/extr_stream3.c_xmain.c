
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_stream (scalar_t__*,int,int ,int ) ;
 int firstkey ;
 int nonce ;
 int printf (char*,...) ;
 scalar_t__* rs ;

int
main(void)
{
    int i;

    crypto_stream(rs, 32, nonce, firstkey);

    for (i = 0; i < 32; ++i) {
        printf(",0x%02x", (unsigned int) rs[i]);
        if (i % 8 == 7)
            printf("\n");
    }
    return 0;
}
