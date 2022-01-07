
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ks; } ;
typedef int EVP_CIPHER_CTX ;


 int RC4 (int *,size_t,unsigned char const*,unsigned char*) ;
 int fprintf (int ,char*) ;
 int stderr ;
 TYPE_1__* test (int *) ;

__attribute__((used)) static int test_rc4_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{



    RC4(&test(ctx)->ks, inl, in, out);
    return 1;
}
