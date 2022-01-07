
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int dummy; } ;
struct crypto_public_key {int dummy; } ;


 int pkcs1_decrypt_public_key (struct crypto_rsa_key*,int const*,size_t,int *,size_t*) ;

int crypto_public_key_decrypt_pkcs1(struct crypto_public_key *key,
        const u8 *crypt, size_t crypt_len,
        u8 *plain, size_t *plain_len)
{
 return pkcs1_decrypt_public_key((struct crypto_rsa_key *) key,
     crypt, crypt_len, plain, plain_len);
}
