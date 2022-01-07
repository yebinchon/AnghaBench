
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_cipher {int skcipher; } ;


 int linux_af_alg_skcipher_deinit (int ) ;
 int os_free (struct crypto_cipher*) ;

void crypto_cipher_deinit(struct crypto_cipher *ctx)
{
 if (ctx) {
  linux_af_alg_skcipher_deinit(ctx->skcipher);
  os_free(ctx);
 }
}
