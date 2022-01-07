
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trad_enc_ctx {long* keys; } ;


 int trad_enc_update_keys (struct trad_enc_ctx*,int ) ;

__attribute__((used)) static int
trad_enc_init(struct trad_enc_ctx *ctx, const char *pw, size_t pw_len)
{

 ctx->keys[0] = 305419896L;
 ctx->keys[1] = 591751049L;
 ctx->keys[2] = 878082192L;

 for (;pw_len; --pw_len)
  trad_enc_update_keys(ctx, *pw++);
 return 0;
}
