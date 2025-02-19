
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int dummy; } ;


 int crypto_rsa_exptmod (int *,size_t,int *,size_t*,struct crypto_rsa_key*,int) ;
 size_t crypto_rsa_get_modulus_len (struct crypto_rsa_key*) ;
 scalar_t__ pkcs1_generate_encryption_block (int,size_t,int const*,size_t,int *,size_t*) ;

int pkcs1_encrypt(int block_type, struct crypto_rsa_key *key,
    int use_private, const u8 *in, size_t inlen,
    u8 *out, size_t *outlen)
{
 size_t modlen;

 modlen = crypto_rsa_get_modulus_len(key);

 if (pkcs1_generate_encryption_block(block_type, modlen, in, inlen,
         out, outlen) < 0)
  return -1;

 return crypto_rsa_exptmod(out, modlen, out, outlen, key, use_private);
}
