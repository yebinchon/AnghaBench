
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkcs5_params {scalar_t__ alg; size_t salt_len; unsigned int iter_count; int * salt; } ;
struct crypto_cipher {int dummy; } ;


 int CRYPTO_CIPHER_ALG_DES ;
 int MD5_MAC_LEN ;
 int MSG_DEBUG ;
 scalar_t__ PKCS5_ALG_MD5_DES_CBC ;
 scalar_t__ PKCS5_ALG_PBES2 ;
 scalar_t__ PKCS5_ALG_SHA1_3DES_CBC ;
 struct crypto_cipher* crypto_cipher_init (int ,int *,int *,int) ;
 scalar_t__ md5_vector (int,int const**,size_t*,int *) ;
 size_t os_strlen (char const*) ;
 struct crypto_cipher* pkcs12_crypto_init_sha1 (struct pkcs5_params*,char const*) ;
 struct crypto_cipher* pkcs5_crypto_init_pbes2 (struct pkcs5_params*,char const*) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;

__attribute__((used)) static struct crypto_cipher * pkcs5_crypto_init(struct pkcs5_params *params,
      const char *passwd)
{
 unsigned int i;
 u8 hash[MD5_MAC_LEN];
 const u8 *addr[2];
 size_t len[2];

 if (params->alg == PKCS5_ALG_PBES2)
  return pkcs5_crypto_init_pbes2(params, passwd);

 if (params->alg == PKCS5_ALG_SHA1_3DES_CBC)
  return pkcs12_crypto_init_sha1(params, passwd);

 if (params->alg != PKCS5_ALG_MD5_DES_CBC)
  return ((void*)0);

 addr[0] = (const u8 *) passwd;
 len[0] = os_strlen(passwd);
 addr[1] = params->salt;
 len[1] = params->salt_len;
 if (md5_vector(2, addr, len, hash) < 0)
  return ((void*)0);
 addr[0] = hash;
 len[0] = MD5_MAC_LEN;
 for (i = 1; i < params->iter_count; i++) {
  if (md5_vector(1, addr, len, hash) < 0)
   return ((void*)0);
 }

 wpa_hexdump_key(MSG_DEBUG, "PKCS #5: DES key", hash, 8);
 wpa_hexdump_key(MSG_DEBUG, "PKCS #5: DES IV", hash + 8, 8);

 return crypto_cipher_init(CRYPTO_CIPHER_ALG_DES, hash + 8, hash, 8);
}
