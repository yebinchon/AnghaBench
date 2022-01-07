
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Aes ;


 int AES_DECRYPTION ;
 scalar_t__ TEST_FAIL () ;
 int wc_AesCbcDecrypt (int *,int *,int *,size_t) ;
 int wc_AesSetKey (int *,int const*,int,int const*,int ) ;

int aes_128_cbc_decrypt(const u8 *key, const u8 *iv, u8 *data, size_t data_len)
{
 Aes aes;
 int ret;

 if (TEST_FAIL())
  return -1;

 ret = wc_AesSetKey(&aes, key, 16, iv, AES_DECRYPTION);
 if (ret != 0)
  return -1;

 ret = wc_AesCbcDecrypt(&aes, data, data, data_len);
 if (ret != 0)
  return -1;
 return 0;
}
