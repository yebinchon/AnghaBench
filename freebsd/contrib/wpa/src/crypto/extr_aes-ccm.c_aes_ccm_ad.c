
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 int MSG_EXCESSIVE ;
 int aes_ccm_auth (void*,int *,size_t,int *) ;
 int aes_ccm_auth_start (void*,size_t,size_t const,int const*,int const*,size_t,size_t,int *) ;
 int aes_ccm_decr_auth (void*,size_t,int *,int const*,int *) ;
 int aes_ccm_encr (void*,size_t const,int const*,size_t,int *,int *) ;
 int aes_ccm_encr_start (size_t const,int const*,int *) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (int const*,size_t) ;
 scalar_t__ os_memcmp_const (int *,int *,size_t) ;
 int wpa_printf (int ,char*) ;

int aes_ccm_ad(const u8 *key, size_t key_len, const u8 *nonce,
        size_t M, const u8 *crypt, size_t crypt_len,
        const u8 *aad, size_t aad_len, const u8 *auth, u8 *plain)
{
 const size_t L = 2;
 void *aes;
 u8 x[AES_BLOCK_SIZE], a[AES_BLOCK_SIZE];
 u8 t[AES_BLOCK_SIZE];

 if (aad_len > 30 || M > AES_BLOCK_SIZE)
  return -1;

 aes = aes_encrypt_init(key, key_len);
 if (aes == ((void*)0))
  return -1;


 aes_ccm_encr_start(L, nonce, a);
 aes_ccm_decr_auth(aes, M, a, auth, t);


 aes_ccm_encr(aes, L, crypt, crypt_len, plain, a);

 aes_ccm_auth_start(aes, M, L, nonce, aad, aad_len, crypt_len, x);
 aes_ccm_auth(aes, plain, crypt_len, x);

 aes_encrypt_deinit(aes);

 if (os_memcmp_const(x, t, M) != 0) {
  wpa_printf(MSG_EXCESSIVE, "CCM: Auth mismatch");
  return -1;
 }

 return 0;
}
