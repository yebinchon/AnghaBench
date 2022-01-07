
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t AES_BLOCK_SIZE ;
 int aes_encrypt (void*,int *,int *) ;
 int xor_aes_block (int *,int const*) ;

__attribute__((used)) static void aes_ccm_auth(void *aes, const u8 *data, size_t len, u8 *x)
{
 size_t last = len % AES_BLOCK_SIZE;
 size_t i;

 for (i = 0; i < len / AES_BLOCK_SIZE; i++) {

  xor_aes_block(x, data);
  data += AES_BLOCK_SIZE;
  aes_encrypt(aes, x, x);
 }
 if (last) {

  for (i = 0; i < last; i++)
   x[i] ^= *data++;
  aes_encrypt(aes, x, x);
 }
}
