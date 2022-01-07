
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {TYPE_1__ ks; } ;
typedef int EVP_CIPHER_CTX ;


 int EVP_AES_KEY ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 int EVP_CIPHER_CTX_iv_noconst (int *) ;
 TYPE_2__* EVP_C_DATA (int ,int *) ;
 int aesni_cbc_encrypt (unsigned char const*,unsigned char*,size_t,int *,int ,int ) ;

__attribute__((used)) static int aesni_cbc_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                            const unsigned char *in, size_t len)
{
    aesni_cbc_encrypt(in, out, len, &EVP_C_DATA(EVP_AES_KEY,ctx)->ks.ks,
                      EVP_CIPHER_CTX_iv_noconst(ctx),
                      EVP_CIPHER_CTX_encrypting(ctx));

    return 1;
}
