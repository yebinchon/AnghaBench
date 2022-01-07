
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 int aes_ccm_auth (void*,int const*,size_t,int *) ;
 int aes_ccm_auth_start (void*,size_t,size_t const,int const*,int const*,size_t,size_t,int *) ;
 int aes_ccm_encr (void*,size_t const,int const*,size_t,int *,int *) ;
 int aes_ccm_encr_auth (void*,size_t,int *,int *,int *) ;
 int aes_ccm_encr_start (size_t const,int const*,int *) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (int const*,size_t) ;

int aes_ccm_ae(const u8 *key, size_t key_len, const u8 *nonce,
        size_t M, const u8 *plain, size_t plain_len,
        const u8 *aad, size_t aad_len, u8 *crypt, u8 *auth)
{
 const size_t L = 2;
 void *aes;
 u8 x[AES_BLOCK_SIZE], a[AES_BLOCK_SIZE];

 if (aad_len > 30 || M > AES_BLOCK_SIZE)
  return -1;

 aes = aes_encrypt_init(key, key_len);
 if (aes == ((void*)0))
  return -1;

 aes_ccm_auth_start(aes, M, L, nonce, aad, aad_len, plain_len, x);
 aes_ccm_auth(aes, plain, plain_len, x);


 aes_ccm_encr_start(L, nonce, a);
 aes_ccm_encr(aes, L, plain, plain_len, crypt, a);
 aes_ccm_encr_auth(aes, M, x, a, auth);

 aes_encrypt_deinit(aes);

 return 0;
}
