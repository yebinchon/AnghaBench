
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 int aes_encrypt (void*,int*,int*) ;
 int inc32 (int*) ;
 int os_memcpy (int*,int const*,int) ;
 int xor_block (int*,int const*) ;

__attribute__((used)) static void aes_gctr(void *aes, const u8 *icb, const u8 *x, size_t xlen, u8 *y)
{
 size_t i, n, last;
 u8 cb[AES_BLOCK_SIZE], tmp[AES_BLOCK_SIZE];
 const u8 *xpos = x;
 u8 *ypos = y;

 if (xlen == 0)
  return;

 n = xlen / 16;

 os_memcpy(cb, icb, AES_BLOCK_SIZE);

 for (i = 0; i < n; i++) {
  aes_encrypt(aes, cb, ypos);
  xor_block(ypos, xpos);
  xpos += AES_BLOCK_SIZE;
  ypos += AES_BLOCK_SIZE;
  inc32(cb);
 }

 last = x + xlen - xpos;
 if (last) {

  aes_encrypt(aes, cb, tmp);
  for (i = 0; i < last; i++)
   *ypos++ = *xpos++ ^ tmp[i];
 }
}
