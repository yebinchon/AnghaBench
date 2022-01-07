
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 int AES_BLOCK_SIZE ;
 int aes_encrypt (void*,unsigned int*,unsigned int*) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (unsigned int const*,size_t) ;
 int os_memcpy (unsigned int*,unsigned int const*,int) ;
 int os_memset (unsigned int*,int,int) ;

int aes_wrap(const u8 *kek, size_t kek_len, int n, const u8 *plain, u8 *cipher)
{
 u8 *a, *r, b[AES_BLOCK_SIZE];
 int i, j;
 void *ctx;
 unsigned int t;

 a = cipher;
 r = cipher + 8;


 os_memset(a, 0xa6, 8);
 os_memcpy(r, plain, 8 * n);

 ctx = aes_encrypt_init(kek, kek_len);
 if (ctx == ((void*)0))
  return -1;
 for (j = 0; j <= 5; j++) {
  r = cipher + 8;
  for (i = 1; i <= n; i++) {
   os_memcpy(b, a, 8);
   os_memcpy(b + 8, r, 8);
   aes_encrypt(ctx, b, b);
   os_memcpy(a, b, 8);
   t = n * j + i;
   a[7] ^= t;
   a[6] ^= t >> 8;
   a[5] ^= t >> 16;
   a[4] ^= t >> 24;
   os_memcpy(r, b + 8, 8);
   r += 8;
  }
 }
 aes_encrypt_deinit(ctx);







 return 0;
}
