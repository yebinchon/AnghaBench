
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct chachapoly_ctx {int header_ctx; } ;


 int PEEK_U32 (int *) ;
 int POKE_U64 (int *,int) ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int chacha_encrypt_bytes (int *,int const*,int *,int) ;
 int chacha_ivsetup (int *,int *,int *) ;

int
chachapoly_get_length(struct chachapoly_ctx *ctx,
    u_int *plenp, u_int seqnr, const u_char *cp, u_int len)
{
 u_char buf[4], seqbuf[8];

 if (len < 4)
  return SSH_ERR_MESSAGE_INCOMPLETE;
 POKE_U64(seqbuf, seqnr);
 chacha_ivsetup(&ctx->header_ctx, seqbuf, ((void*)0));
 chacha_encrypt_bytes(&ctx->header_ctx, cp, buf, 4);
 *plenp = PEEK_U32(buf);
 return 0;
}
