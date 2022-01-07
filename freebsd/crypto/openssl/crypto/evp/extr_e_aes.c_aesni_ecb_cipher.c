
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
 size_t EVP_CIPHER_CTX_block_size (int *) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 TYPE_2__* EVP_C_DATA (int ,int *) ;
 int aesni_ecb_encrypt (unsigned char const*,unsigned char*,size_t,int *,int ) ;

__attribute__((used)) static int aesni_ecb_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                            const unsigned char *in, size_t len)
{
    size_t bl = EVP_CIPHER_CTX_block_size(ctx);

    if (len < bl)
        return 1;

    aesni_ecb_encrypt(in, out, len, &EVP_C_DATA(EVP_AES_KEY,ctx)->ks.ks,
                      EVP_CIPHER_CTX_encrypting(ctx));

    return 1;
}
