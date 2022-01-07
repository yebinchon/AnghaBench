
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct trad_enc_ctx {int* keys; } ;



__attribute__((used)) static uint8_t
trad_enc_decrypt_byte(struct trad_enc_ctx *ctx)
{
 unsigned temp = ctx->keys[2] | 2;
 return (uint8_t)((temp * (temp ^ 1)) >> 8) & 0xff;
}
