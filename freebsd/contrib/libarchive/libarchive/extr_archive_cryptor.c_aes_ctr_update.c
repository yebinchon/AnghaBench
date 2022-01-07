
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int archive_crypto_ctx ;


 int aes_ctr_encrypt_counter (int *) ;

__attribute__((used)) static int
aes_ctr_update(archive_crypto_ctx *ctx, const uint8_t * const in,
    size_t in_len, uint8_t * const out, size_t *out_len)
{
 (void)ctx;
 (void)in;
 (void)in_len;
 (void)out;
 (void)out_len;
 aes_ctr_encrypt_counter(ctx);
 return -1;
}
