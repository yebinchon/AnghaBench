
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_private_key {int rsa; } ;


 int PK_PRIVATE ;
 int crypto_rsa_encrypt_pkcs1 (int,int *,int ,int const*,size_t,int *,size_t*) ;

int crypto_private_key_sign_pkcs1(struct crypto_private_key *key,
      const u8 *in, size_t inlen,
      u8 *out, size_t *outlen)
{
 return crypto_rsa_encrypt_pkcs1(1, &key->rsa, PK_PRIVATE, in, inlen,
     out, outlen);
}
