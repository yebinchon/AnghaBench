
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 scalar_t__ TEST_FAIL () ;
 int aes_encrypt (void*,int*,int*) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (int const*,size_t) ;
 int gf_mulx (int*) ;
 int os_memset (int*,int ,int) ;

int omac1_aes_vector(const u8 *key, size_t key_len, size_t num_elem,
       const u8 *addr[], const size_t *len, u8 *mac)
{
 void *ctx;
 u8 cbc[AES_BLOCK_SIZE], pad[AES_BLOCK_SIZE];
 const u8 *pos, *end;
 size_t i, e, left, total_len;

 if (TEST_FAIL())
  return -1;

 ctx = aes_encrypt_init(key, key_len);
 if (ctx == ((void*)0))
  return -1;
 os_memset(cbc, 0, AES_BLOCK_SIZE);

 total_len = 0;
 for (e = 0; e < num_elem; e++)
  total_len += len[e];
 left = total_len;

 e = 0;
 pos = addr[0];
 end = pos + len[0];

 while (left >= AES_BLOCK_SIZE) {
  for (i = 0; i < AES_BLOCK_SIZE; i++) {
   cbc[i] ^= *pos++;
   if (pos >= end) {




    if (i + 1 == AES_BLOCK_SIZE &&
        left == AES_BLOCK_SIZE)
     break;
    e++;
    pos = addr[e];
    end = pos + len[e];
   }
  }
  if (left > AES_BLOCK_SIZE)
   aes_encrypt(ctx, cbc, cbc);
  left -= AES_BLOCK_SIZE;
 }

 os_memset(pad, 0, AES_BLOCK_SIZE);
 aes_encrypt(ctx, pad, pad);
 gf_mulx(pad);

 if (left || total_len == 0) {
  for (i = 0; i < left; i++) {
   cbc[i] ^= *pos++;
   if (pos >= end) {




    if (i + 1 == left)
     break;
    e++;
    pos = addr[e];
    end = pos + len[e];
   }
  }
  cbc[left] ^= 0x80;
  gf_mulx(pad);
 }

 for (i = 0; i < AES_BLOCK_SIZE; i++)
  pad[i] ^= cbc[i];
 aes_encrypt(ctx, pad, mac);
 aes_encrypt_deinit(ctx);
 return 0;
}
