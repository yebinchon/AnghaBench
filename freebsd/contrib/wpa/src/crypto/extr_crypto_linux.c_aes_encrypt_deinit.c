
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linux_af_alg_skcipher_deinit (void*) ;

void aes_encrypt_deinit(void *ctx)
{
 linux_af_alg_skcipher_deinit(ctx);
}
