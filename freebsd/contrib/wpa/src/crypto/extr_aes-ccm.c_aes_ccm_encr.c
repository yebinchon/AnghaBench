
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t AES_BLOCK_SIZE ;
 int WPA_PUT_BE16 (int *,size_t) ;
 int aes_encrypt (void*,int *,int *) ;
 int xor_aes_block (int *,int const*) ;

__attribute__((used)) static void aes_ccm_encr(void *aes, size_t L, const u8 *in, size_t len, u8 *out,
    u8 *a)
{
 size_t last = len % AES_BLOCK_SIZE;
 size_t i;


 for (i = 1; i <= len / AES_BLOCK_SIZE; i++) {
  WPA_PUT_BE16(&a[AES_BLOCK_SIZE - 2], i);

  aes_encrypt(aes, a, out);
  xor_aes_block(out, in);
  out += AES_BLOCK_SIZE;
  in += AES_BLOCK_SIZE;
 }
 if (last) {
  WPA_PUT_BE16(&a[AES_BLOCK_SIZE - 2], i);
  aes_encrypt(aes, a, out);

  for (i = 0; i < last; i++)
   *out++ ^= *in++;
 }
}
