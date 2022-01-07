
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rsa_key {int n; } ;


 size_t bignum_get_unsigned_bin_len (int ) ;

size_t crypto_rsa_get_modulus_len(struct crypto_rsa_key *key)
{
 return bignum_get_unsigned_bin_len(key->n);
}
