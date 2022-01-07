
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 int MSG_EXCESSIVE ;
 int aes_encrypt (void*,int *,int *) ;
 void* aes_encrypt_init (int const*,size_t) ;
 int os_memset (int *,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;

__attribute__((used)) static void * aes_gcm_init_hash_subkey(const u8 *key, size_t key_len, u8 *H)
{
 void *aes;

 aes = aes_encrypt_init(key, key_len);
 if (aes == ((void*)0))
  return ((void*)0);


 os_memset(H, 0, AES_BLOCK_SIZE);
 aes_encrypt(aes, H, H);
 wpa_hexdump_key(MSG_EXCESSIVE, "Hash subkey H for GHASH",
   H, AES_BLOCK_SIZE);
 return aes;
}
