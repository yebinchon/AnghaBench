
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int archive_hmac_sha1_ctx ;
typedef int archive_crypto_ctx ;


 scalar_t__ ARCHIVE_OK ;
 int ENCRYPTION_WINZIP_AES128 ;
 int MAX_DERIVED_KEY_BUF_SIZE ;
 int archive_encrypto_aes_ctr_init (int *,int *,size_t) ;
 int archive_encrypto_aes_ctr_release (int *) ;
 int archive_hmac_sha1_cleanup (int *) ;
 int archive_hmac_sha1_init (int *,int *,size_t) ;
 int archive_pbkdf2_sha1 (char*,int,int *,size_t,int,int *,size_t) ;
 scalar_t__ archive_random (int *,size_t) ;

__attribute__((used)) static int
is_winzip_aes_encryption_supported(int encryption)
{
 size_t key_len, salt_len;
 uint8_t salt[16 + 2];
 uint8_t derived_key[MAX_DERIVED_KEY_BUF_SIZE];
 archive_crypto_ctx cctx;
 archive_hmac_sha1_ctx hctx;
 int ret;

 if (encryption == ENCRYPTION_WINZIP_AES128) {
  salt_len = 8;
  key_len = 16;
 } else {

  salt_len = 16;
  key_len = 32;
 }
 if (archive_random(salt, salt_len) != ARCHIVE_OK)
  return (0);
 ret = archive_pbkdf2_sha1("p", 1, salt, salt_len, 1000,
     derived_key, key_len * 2 + 2);
 if (ret != 0)
  return (0);

 ret = archive_encrypto_aes_ctr_init(&cctx, derived_key, key_len);
 if (ret != 0)
  return (0);
 ret = archive_hmac_sha1_init(&hctx, derived_key + key_len,
     key_len);
 archive_encrypto_aes_ctr_release(&cctx);
 if (ret != 0)
  return (0);
 archive_hmac_sha1_cleanup(&hctx);
 return (1);
}
