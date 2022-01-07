
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 int AES_BLOCK_SIZE ;
 int aes_decrypt (void*,unsigned int*,unsigned int*) ;
 int aes_decrypt_deinit (void*) ;
 void* aes_decrypt_init (unsigned int const*,size_t) ;
 int os_memcpy (unsigned int*,unsigned int const*,int) ;

int aes_unwrap(const u8 *kek, size_t kek_len, int n, const u8 *cipher,
        u8 *plain)
{
 u8 a[8], *r, b[AES_BLOCK_SIZE];
 int i, j;
 void *ctx;
 unsigned int t;


 os_memcpy(a, cipher, 8);
 r = plain;
 os_memcpy(r, cipher + 8, 8 * n);

 ctx = aes_decrypt_init(kek, kek_len);
 if (ctx == ((void*)0))
  return -1;
 for (j = 5; j >= 0; j--) {
  r = plain + (n - 1) * 8;
  for (i = n; i >= 1; i--) {
   os_memcpy(b, a, 8);
   t = n * j + i;
   b[7] ^= t;
   b[6] ^= t >> 8;
   b[5] ^= t >> 16;
   b[4] ^= t >> 24;

   os_memcpy(b + 8, r, 8);
   aes_decrypt(ctx, b, b);
   os_memcpy(a, b, 8);
   os_memcpy(r, b + 8, 8);
   r -= 8;
  }
 }
 aes_decrypt_deinit(ctx);






 for (i = 0; i < 8; i++) {
  if (a[i] != 0xa6)
   return -1;
 }

 return 0;
}
