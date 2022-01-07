
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct chachapoly_ctx {int main_ctx; int header_ctx; } ;
typedef int seqbuf ;
typedef int poly_key ;
typedef int expected_tag ;


 int POKE_U64 (int*,int) ;
 int POLY1305_KEYLEN ;
 int POLY1305_TAGLEN ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_MAC_INVALID ;
 int chacha_encrypt_bytes (int *,int const*,int*,int) ;
 int chacha_ivsetup (int *,int*,int const*) ;
 int explicit_bzero (int*,int) ;
 int memset (int*,int ,int) ;
 int poly1305_auth (int*,int const*,int,int*) ;
 scalar_t__ timingsafe_bcmp (int*,int const*,int) ;

int
chachapoly_crypt(struct chachapoly_ctx *ctx, u_int seqnr, u_char *dest,
    const u_char *src, u_int len, u_int aadlen, u_int authlen, int do_encrypt)
{
 u_char seqbuf[8];
 const u_char one[8] = { 1, 0, 0, 0, 0, 0, 0, 0 };
 u_char expected_tag[POLY1305_TAGLEN], poly_key[POLY1305_KEYLEN];
 int r = SSH_ERR_INTERNAL_ERROR;





 memset(poly_key, 0, sizeof(poly_key));
 POKE_U64(seqbuf, seqnr);
 chacha_ivsetup(&ctx->main_ctx, seqbuf, ((void*)0));
 chacha_encrypt_bytes(&ctx->main_ctx,
     poly_key, poly_key, sizeof(poly_key));


 if (!do_encrypt) {
  const u_char *tag = src + aadlen + len;

  poly1305_auth(expected_tag, src, aadlen + len, poly_key);
  if (timingsafe_bcmp(expected_tag, tag, POLY1305_TAGLEN) != 0) {
   r = SSH_ERR_MAC_INVALID;
   goto out;
  }
 }


 if (aadlen) {
  chacha_ivsetup(&ctx->header_ctx, seqbuf, ((void*)0));
  chacha_encrypt_bytes(&ctx->header_ctx, src, dest, aadlen);
 }


 chacha_ivsetup(&ctx->main_ctx, seqbuf, one);
 chacha_encrypt_bytes(&ctx->main_ctx, src + aadlen,
     dest + aadlen, len);


 if (do_encrypt) {
  poly1305_auth(dest + aadlen + len, dest, aadlen + len,
      poly_key);
 }
 r = 0;
 out:
 explicit_bzero(expected_tag, sizeof(expected_tag));
 explicit_bzero(seqbuf, sizeof(seqbuf));
 explicit_bzero(poly_key, sizeof(poly_key));
 return r;
}
