
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_cipher {int dec; int enc; } ;


 int EVP_CIPHER_CTX_free (int ) ;
 int os_free (struct crypto_cipher*) ;

void crypto_cipher_deinit(struct crypto_cipher *ctx)
{
 EVP_CIPHER_CTX_free(ctx->enc);
 EVP_CIPHER_CTX_free(ctx->dec);
 os_free(ctx);
}
