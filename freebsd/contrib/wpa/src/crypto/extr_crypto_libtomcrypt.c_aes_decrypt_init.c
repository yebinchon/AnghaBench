
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void symmetric_key ;


 scalar_t__ CRYPT_OK ;
 scalar_t__ aes_setup (int const*,size_t,int ,void*) ;
 int os_free (void*) ;
 void* os_malloc (int) ;

void * aes_decrypt_init(const u8 *key, size_t len)
{
 symmetric_key *skey;
 skey = os_malloc(sizeof(*skey));
 if (skey == ((void*)0))
  return ((void*)0);
 if (aes_setup(key, len, 0, skey) != CRYPT_OK) {
  os_free(skey);
  return ((void*)0);
 }
 return skey;
}
