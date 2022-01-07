
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int aes_ctr_encrypt (int const*,int,int const*,int *,size_t) ;

int aes_128_ctr_encrypt(const u8 *key, const u8 *nonce,
   u8 *data, size_t data_len)
{
 return aes_ctr_encrypt(key, 16, nonce, data, data_len);
}
