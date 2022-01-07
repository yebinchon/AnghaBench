
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_hmac_ctx {size_t buf_len; int* buf; int digest; int ictx; int octx; int alg; } ;


 int explicit_bzero (int*,size_t) ;
 int memcpy (int*,void const*,size_t) ;
 scalar_t__ ssh_digest_copy_state (int ,int ) ;
 scalar_t__ ssh_digest_memory (int ,void const*,size_t,int*,size_t) ;
 scalar_t__ ssh_digest_update (int ,int*,size_t) ;

int
ssh_hmac_init(struct ssh_hmac_ctx *ctx, const void *key, size_t klen)
{
 size_t i;


 if (key != ((void*)0)) {

  if (klen <= ctx->buf_len)
   memcpy(ctx->buf, key, klen);
  else if (ssh_digest_memory(ctx->alg, key, klen, ctx->buf,
      ctx->buf_len) < 0)
   return -1;
  for (i = 0; i < ctx->buf_len; i++)
   ctx->buf[i] ^= 0x36;
  if (ssh_digest_update(ctx->ictx, ctx->buf, ctx->buf_len) < 0)
   return -1;
  for (i = 0; i < ctx->buf_len; i++)
   ctx->buf[i] ^= 0x36 ^ 0x5c;
  if (ssh_digest_update(ctx->octx, ctx->buf, ctx->buf_len) < 0)
   return -1;
  explicit_bzero(ctx->buf, ctx->buf_len);
 }

 if (ssh_digest_copy_state(ctx->ictx, ctx->digest) < 0)
  return -1;
 return 0;
}
