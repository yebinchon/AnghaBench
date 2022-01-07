
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_hash {int dummy; } ;


 size_t SHA256_MAC_LEN ;
 int crypto_hash_finish (struct crypto_hash*,int *,size_t*) ;

void eap_pwd_h_final(struct crypto_hash *hash, u8 *digest)
{
 size_t len = SHA256_MAC_LEN;
 crypto_hash_finish(hash, digest, &len);
}
