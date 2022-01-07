
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int S ;


 int AES_BLOCK_SIZE ;
 int aes_encrypt_deinit (void*) ;
 int aes_gcm_gctr (void*,int *,int const*,size_t,int *) ;
 int aes_gcm_ghash (int *,int const*,size_t,int *,size_t,int *) ;
 void* aes_gcm_init_hash_subkey (int const*,size_t,int *) ;
 int aes_gcm_prepare_j0 (int const*,size_t,int *,int *) ;
 int aes_gctr (void*,int *,int *,int,int *) ;

int aes_gcm_ae(const u8 *key, size_t key_len, const u8 *iv, size_t iv_len,
        const u8 *plain, size_t plain_len,
        const u8 *aad, size_t aad_len, u8 *crypt, u8 *tag)
{
 u8 H[AES_BLOCK_SIZE];
 u8 J0[AES_BLOCK_SIZE];
 u8 S[16];
 void *aes;

 aes = aes_gcm_init_hash_subkey(key, key_len, H);
 if (aes == ((void*)0))
  return -1;

 aes_gcm_prepare_j0(iv, iv_len, H, J0);


 aes_gcm_gctr(aes, J0, plain, plain_len, crypt);

 aes_gcm_ghash(H, aad, aad_len, crypt, plain_len, S);


 aes_gctr(aes, J0, S, sizeof(S), tag);



 aes_encrypt_deinit(aes);

 return 0;
}
