
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int * e; int * n; } ;


 void* bignum_init () ;
 scalar_t__ bignum_set_unsigned_bin (int *,int const*,size_t) ;
 int crypto_rsa_free (struct crypto_rsa_key*) ;
 struct crypto_rsa_key* os_zalloc (int) ;

struct crypto_rsa_key *
crypto_rsa_import_public_key_parts(const u8 *n, size_t n_len,
       const u8 *e, size_t e_len)
{
 struct crypto_rsa_key *key;

 key = os_zalloc(sizeof(*key));
 if (key == ((void*)0))
  return ((void*)0);

 key->n = bignum_init();
 key->e = bignum_init();
 if (key->n == ((void*)0) || key->e == ((void*)0) ||
     bignum_set_unsigned_bin(key->n, n, n_len) < 0 ||
     bignum_set_unsigned_bin(key->e, e, e_len) < 0) {
  crypto_rsa_free(key);
  return ((void*)0);
 }

 return key;
}
