
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int aes_encrypt (void*,int const*,int *) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (int const*,int) ;

int aes_128_encrypt_block(const u8 *key, const u8 *in, u8 *out)
{
 void *ctx;
 ctx = aes_encrypt_init(key, 16);
 if (ctx == ((void*)0))
  return -1;
 aes_encrypt(ctx, in, out);
 aes_encrypt_deinit(ctx);
 return 0;
}
