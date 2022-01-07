
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_hash {int dummy; } ;


 int CRYPTO_HASH_ALG_HMAC_SHA256 ;
 int SHA256_MAC_LEN ;
 struct crypto_hash* crypto_hash_init (int ,int *,int) ;
 int os_memset (int *,int ,int) ;

struct crypto_hash * eap_pwd_h_init(void)
{
 u8 allzero[SHA256_MAC_LEN];
 os_memset(allzero, 0, SHA256_MAC_LEN);
 return crypto_hash_init(CRYPTO_HASH_ALG_HMAC_SHA256, allzero,
    SHA256_MAC_LEN);
}
