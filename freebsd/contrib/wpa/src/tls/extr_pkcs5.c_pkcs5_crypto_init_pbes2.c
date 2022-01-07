
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkcs5_params {scalar_t__ enc_alg; int iv_len; int salt_len; int iv; int iter_count; int salt; } ;
struct crypto_cipher {int dummy; } ;
typedef int key ;


 int CRYPTO_CIPHER_ALG_3DES ;
 int MSG_DEBUG ;
 scalar_t__ PBES2_ENC_ALG_DES_EDE3_CBC ;
 struct crypto_cipher* crypto_cipher_init (int ,int ,int *,int) ;
 int os_strlen (char const*) ;
 scalar_t__ pbkdf2_sha1 (char const*,int ,int,int ,int *,int) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_hexdump_ascii_key (int ,char*,char const*,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static struct crypto_cipher *
pkcs5_crypto_init_pbes2(struct pkcs5_params *params, const char *passwd)
{
 u8 key[24];

 if (params->enc_alg != PBES2_ENC_ALG_DES_EDE3_CBC ||
     params->iv_len != 8)
  return ((void*)0);

 wpa_hexdump_ascii_key(MSG_DEBUG, "PKCS #5: PBES2 password for PBKDF2",
         passwd, os_strlen(passwd));
 wpa_hexdump(MSG_DEBUG, "PKCS #5: PBES2 salt for PBKDF2",
      params->salt, params->salt_len);
 wpa_printf(MSG_DEBUG, "PKCS #5: PBES2 PBKDF2 iterations: %u",
     params->iter_count);
 if (pbkdf2_sha1(passwd, params->salt, params->salt_len,
   params->iter_count, key, sizeof(key)) < 0)
  return ((void*)0);
 wpa_hexdump_key(MSG_DEBUG, "PKCS #5: DES EDE3 key", key, sizeof(key));
 wpa_hexdump(MSG_DEBUG, "PKCS #5: DES IV", params->iv, params->iv_len);

 return crypto_cipher_init(CRYPTO_CIPHER_ALG_3DES, params->iv,
      key, sizeof(key));
}
