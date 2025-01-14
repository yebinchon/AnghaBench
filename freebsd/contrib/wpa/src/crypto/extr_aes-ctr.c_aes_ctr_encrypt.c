
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int AES_BLOCK_SIZE ;
 int aes_encrypt (void*,scalar_t__*,scalar_t__*) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (scalar_t__ const*,size_t) ;
 int os_memcpy (scalar_t__*,scalar_t__ const*,int) ;

int aes_ctr_encrypt(const u8 *key, size_t key_len, const u8 *nonce,
      u8 *data, size_t data_len)
{
 void *ctx;
 size_t j, len, left = data_len;
 int i;
 u8 *pos = data;
 u8 counter[AES_BLOCK_SIZE], buf[AES_BLOCK_SIZE];

 ctx = aes_encrypt_init(key, key_len);
 if (ctx == ((void*)0))
  return -1;
 os_memcpy(counter, nonce, AES_BLOCK_SIZE);

 while (left > 0) {
  aes_encrypt(ctx, counter, buf);

  len = (left < AES_BLOCK_SIZE) ? left : AES_BLOCK_SIZE;
  for (j = 0; j < len; j++)
   pos[j] ^= buf[j];
  pos += len;
  left -= len;

  for (i = AES_BLOCK_SIZE - 1; i >= 0; i--) {
   counter[i]++;
   if (counter[i])
    break;
  }
 }
 aes_encrypt_deinit(ctx);
 return 0;
}
