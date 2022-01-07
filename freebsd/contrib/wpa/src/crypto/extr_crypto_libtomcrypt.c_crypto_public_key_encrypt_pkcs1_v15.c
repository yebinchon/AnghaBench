
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_public_key {int rsa; } ;


 int PK_PUBLIC ;
 int crypto_rsa_encrypt_pkcs1 (int,int *,int ,int const*,size_t,int *,size_t*) ;

int crypto_public_key_encrypt_pkcs1_v15(struct crypto_public_key *key,
     const u8 *in, size_t inlen,
     u8 *out, size_t *outlen)
{
 return crypto_rsa_encrypt_pkcs1(2, &key->rsa, PK_PUBLIC, in, inlen,
     out, outlen);
}
