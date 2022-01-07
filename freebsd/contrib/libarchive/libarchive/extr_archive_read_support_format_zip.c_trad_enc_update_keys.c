
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct trad_enc_ctx {long* keys; } ;


 void* CRC32 (long,int) ;

__attribute__((used)) static void
trad_enc_update_keys(struct trad_enc_ctx *ctx, uint8_t c)
{
 uint8_t t;


 ctx->keys[0] = (crc32(ctx->keys[0] ^ 0xffffffffUL, &c, 1) ^ 0xffffffffUL);
 ctx->keys[1] = (ctx->keys[1] + (ctx->keys[0] & 0xff)) * 134775813L + 1;
 t = (ctx->keys[1] >> 24) & 0xff;
 ctx->keys[2] = (crc32(ctx->keys[2] ^ 0xffffffffUL, &t, 1) ^ 0xffffffffUL);

}
