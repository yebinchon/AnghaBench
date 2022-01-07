
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int CRYPTO_CIPHER_ALG_3DES ;
 int CRYPTO_CIPHER_ALG_AES ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int crypto_cipher_deinit (struct crypto_cipher*) ;
 scalar_t__ crypto_cipher_encrypt (struct crypto_cipher*,int const*,int *,size_t) ;
 struct crypto_cipher* crypto_cipher_init (int,int const*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

int ikev2_encr_encrypt(int alg, const u8 *key, size_t key_len, const u8 *iv,
         const u8 *plain, u8 *crypt, size_t len)
{
 struct crypto_cipher *cipher;
 int encr_alg;

 switch (alg) {
 case 129:
  encr_alg = CRYPTO_CIPHER_ALG_3DES;
  break;
 case 128:
  encr_alg = CRYPTO_CIPHER_ALG_AES;
  break;
 default:
  wpa_printf(MSG_DEBUG, "IKEV2: Unsupported encr alg %d", alg);
  return -1;
 }

 cipher = crypto_cipher_init(encr_alg, iv, key, key_len);
 if (cipher == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Failed to initialize cipher");
  return -1;
 }

 if (crypto_cipher_encrypt(cipher, plain, crypt, len) < 0) {
  wpa_printf(MSG_INFO, "IKEV2: Encryption failed");
  crypto_cipher_deinit(cipher);
  return -1;
 }
 crypto_cipher_deinit(cipher);

 return 0;
}
