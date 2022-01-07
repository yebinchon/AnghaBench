
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* gcry_cipher_hd_t ;


 int GCRY_CIPHER_AES ;
 int GCRY_CIPHER_MODE_ECB ;
 scalar_t__ GPG_ERR_NO_ERROR ;
 scalar_t__ TEST_FAIL () ;
 int gcry_cipher_close (void*) ;
 scalar_t__ gcry_cipher_open (void**,int ,int ,int ) ;
 scalar_t__ gcry_cipher_setkey (void*,int const*,size_t) ;

void * aes_decrypt_init(const u8 *key, size_t len)
{
 gcry_cipher_hd_t hd;

 if (TEST_FAIL())
  return ((void*)0);

 if (gcry_cipher_open(&hd, GCRY_CIPHER_AES, GCRY_CIPHER_MODE_ECB, 0) !=
     GPG_ERR_NO_ERROR)
  return ((void*)0);
 if (gcry_cipher_setkey(hd, key, len) != GPG_ERR_NO_ERROR) {
  gcry_cipher_close(hd);
  return ((void*)0);
 }

 return hd;
}
