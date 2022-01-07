
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbc; } ;
struct crypto_cipher {TYPE_1__ u; int rc4; } ;


 int cbc_done (int *) ;
 int os_free (struct crypto_cipher*) ;

void crypto_cipher_deinit(struct crypto_cipher *ctx)
{
 if (!ctx->rc4)
  cbc_done(&ctx->u.cbc);
 os_free(ctx);
}
