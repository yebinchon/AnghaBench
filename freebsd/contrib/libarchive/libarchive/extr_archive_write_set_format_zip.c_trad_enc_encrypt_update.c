
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct trad_enc_ctx {int dummy; } ;


 int trad_enc_decrypt_byte (struct trad_enc_ctx*) ;
 int trad_enc_update_keys (struct trad_enc_ctx*,int) ;

__attribute__((used)) static unsigned
trad_enc_encrypt_update(struct trad_enc_ctx *ctx, const uint8_t *in,
    size_t in_len, uint8_t *out, size_t out_len)
{
 unsigned i, max;

 max = (unsigned)((in_len < out_len)? in_len: out_len);

 for (i = 0; i < max; i++) {
  uint8_t t = in[i];
  out[i] = t ^ trad_enc_decrypt_byte(ctx);
  trad_enc_update_keys(ctx, t);
 }
 return i;
}
