
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_hash {int dummy; } ;


 int crypto_hash_update (struct crypto_hash*,int const*,size_t) ;

void eap_pwd_h_update(struct crypto_hash *hash, const u8 *data, size_t len)
{
 crypto_hash_update(hash, data, len);
}
