
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct chachapoly_ctx {int header_ctx; int main_ctx; } ;


 int SSH_ERR_INVALID_ARGUMENT ;
 int chacha_keysetup (int *,int const*,int) ;

int
chachapoly_init(struct chachapoly_ctx *ctx,
    const u_char *key, u_int keylen)
{
 if (keylen != (32 + 32))
  return SSH_ERR_INVALID_ARGUMENT;
 chacha_keysetup(&ctx->main_ctx, key, 256);
 chacha_keysetup(&ctx->header_ctx, key + 32, 256);
 return 0;
}
