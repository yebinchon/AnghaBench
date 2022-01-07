
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_hash {int t; int s; } ;


 int close (int ) ;
 int os_free (struct crypto_hash*) ;

__attribute__((used)) static void crypto_hash_deinit(struct crypto_hash *ctx)
{
 close(ctx->s);
 close(ctx->t);
 os_free(ctx);
}
