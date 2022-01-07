
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int actx ;
typedef int AES_KEY ;


 scalar_t__ AES_set_decrypt_key (int const*,size_t,int *) ;
 int AES_unwrap_key (int *,int *,int *,int const*,int) ;
 int OPENSSL_cleanse (int *,int) ;
 scalar_t__ TEST_FAIL () ;

int aes_unwrap(const u8 *kek, size_t kek_len, int n, const u8 *cipher,
        u8 *plain)
{
 AES_KEY actx;
 int res;

 if (TEST_FAIL())
  return -1;
 if (AES_set_decrypt_key(kek, kek_len << 3, &actx))
  return -1;
 res = AES_unwrap_key(&actx, ((void*)0), plain, cipher, (n + 1) * 8);
 OPENSSL_cleanse(&actx, sizeof(actx));
 return res <= 0 ? -1 : 0;
}
