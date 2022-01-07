
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const* EVP_aes_128_ecb () ;
 int const* EVP_aes_192_ecb () ;
 int const* EVP_aes_256_ecb () ;

__attribute__((used)) static const EVP_CIPHER * aes_get_evp_cipher(size_t keylen)
{
 switch (keylen) {
 case 16:
  return EVP_aes_128_ecb();
 case 24:
  return EVP_aes_192_ecb();
 case 32:
  return EVP_aes_256_ecb();
 }

 return ((void*)0);
}
