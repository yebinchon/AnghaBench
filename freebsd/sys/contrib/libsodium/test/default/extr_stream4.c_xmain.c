
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* c ;
 int crypto_stream_xor (scalar_t__*,int ,int,int ,int ) ;
 int firstkey ;
 int m ;
 int nonce ;
 int printf (char*,...) ;

int
main(void)
{
    int i;

    crypto_stream_xor(c, m, 163, nonce, firstkey);

    for (i = 32; i < 163; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
        if (i % 8 == 7)
            printf("\n");
    }
    printf("\n");

    return 0;
}
