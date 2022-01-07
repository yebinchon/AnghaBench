
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void Aes ;


 int AES_DECRYPTION ;
 scalar_t__ TEST_FAIL () ;
 int os_free (void*) ;
 void* os_malloc (int) ;
 scalar_t__ wc_AesSetKey (void*,int const*,size_t,int *,int ) ;

void * aes_decrypt_init(const u8 *key, size_t len)
{
 Aes *aes;

 if (TEST_FAIL())
  return ((void*)0);

 aes = os_malloc(sizeof(Aes));
 if (!aes)
  return ((void*)0);

 if (wc_AesSetKey(aes, key, len, ((void*)0), AES_DECRYPTION) < 0) {
  os_free(aes);
  return ((void*)0);
 }

 return aes;
}
