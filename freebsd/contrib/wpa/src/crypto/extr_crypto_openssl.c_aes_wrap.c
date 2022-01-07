
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int actx ;
typedef int AES_KEY ;


 scalar_t__ AES_set_encrypt_key (int const*,size_t,int *) ;
 int AES_wrap_key (int *,int *,int *,int const*,int) ;
 int OPENSSL_cleanse (int *,int) ;
 scalar_t__ TEST_FAIL () ;

int aes_wrap(const u8 *kek, size_t kek_len, int n, const u8 *plain, u8 *cipher)
{
 AES_KEY actx;
 int res;

 if (TEST_FAIL())
  return -1;
 if (AES_set_encrypt_key(kek, kek_len << 3, &actx))
  return -1;
 res = AES_wrap_key(&actx, ((void*)0), cipher, plain, n * 8);
 OPENSSL_cleanse(&actx, sizeof(actx));
 return res <= 0 ? -1 : 0;
}
