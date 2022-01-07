
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ TEST_FAIL () ;
 int wc_AesKeyWrap (int const*,size_t,int const*,int,int *,int,int *) ;

int aes_wrap(const u8 *kek, size_t kek_len, int n, const u8 *plain, u8 *cipher)
{
 int ret;

 if (TEST_FAIL())
  return -1;

 ret = wc_AesKeyWrap(kek, kek_len, plain, n * 8, cipher, (n + 1) * 8,
       ((void*)0));
 return ret != (n + 1) * 8 ? -1 : 0;
}
