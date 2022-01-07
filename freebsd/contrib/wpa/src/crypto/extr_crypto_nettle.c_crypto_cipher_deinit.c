
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_cipher {int dummy; } ;


 int bin_clear_free (struct crypto_cipher*,int) ;

void crypto_cipher_deinit(struct crypto_cipher *ctx)
{
 bin_clear_free(ctx, sizeof(*ctx));
}
