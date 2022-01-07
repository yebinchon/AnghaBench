
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int mpz_t ;


 int crypto_mod_exp (int const*,size_t,int const*,size_t,int const*,size_t,int *,size_t*) ;
 int mpz_clear (int ) ;
 int mpz_clears (int ,int ,int ,int *) ;
 scalar_t__ mpz_cmp_d (int ,int) ;
 int mpz_import (int ,size_t,int,int,int,int ,int const*) ;
 int mpz_init (int ) ;
 int mpz_inits (int ,int ,int ,int *) ;
 int mpz_powm (int ,int ,int ,int ) ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;

int crypto_dh_derive_secret(u8 generator, const u8 *prime, size_t prime_len,
       const u8 *order, size_t order_len,
       const u8 *privkey, size_t privkey_len,
       const u8 *pubkey, size_t pubkey_len,
       u8 *secret, size_t *len)
{
 mpz_t pub;
 int res = -1;

 if (pubkey_len > prime_len ||
     (pubkey_len == prime_len &&
      os_memcmp(pubkey, prime, prime_len) >= 0))
  return -1;

 mpz_init(pub);
 mpz_import(pub, pubkey_len, 1, 1, 1, 0, pubkey);
 if (mpz_cmp_d(pub, 1) <= 0)
  goto fail;

 if (order) {
  mpz_t p, q, tmp;
  int failed;


  mpz_inits(p, q, tmp, ((void*)0));
  mpz_import(p, prime_len, 1, 1, 1, 0, prime);
  mpz_import(q, order_len, 1, 1, 1, 0, order);
  mpz_powm(tmp, pub, q, p);
  failed = mpz_cmp_d(tmp, 1) != 0;
  mpz_clears(p, q, tmp, ((void*)0));
  if (failed)
   goto fail;
 }

 res = crypto_mod_exp(pubkey, pubkey_len, privkey, privkey_len,
        prime, prime_len, secret, len);
fail:
 mpz_clear(pub);
 return res;
}
