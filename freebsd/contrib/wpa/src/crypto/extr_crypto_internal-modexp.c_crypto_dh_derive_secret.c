
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bignum {int dummy; } ;


 scalar_t__ bignum_cmp_d (struct bignum*,int) ;
 int bignum_deinit (struct bignum*) ;
 scalar_t__ bignum_exptmod (struct bignum*,struct bignum*,struct bignum*,struct bignum*) ;
 struct bignum* bignum_init () ;
 scalar_t__ bignum_set_unsigned_bin (struct bignum*,int const*,size_t) ;
 int crypto_mod_exp (int const*,size_t,int const*,size_t,int const*,size_t,int *,size_t*) ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;

int crypto_dh_derive_secret(u8 generator, const u8 *prime, size_t prime_len,
       const u8 *order, size_t order_len,
       const u8 *privkey, size_t privkey_len,
       const u8 *pubkey, size_t pubkey_len,
       u8 *secret, size_t *len)
{
 struct bignum *pub;
 int res = -1;

 if (pubkey_len > prime_len ||
     (pubkey_len == prime_len &&
      os_memcmp(pubkey, prime, prime_len) >= 0))
  return -1;

 pub = bignum_init();
 if (!pub || bignum_set_unsigned_bin(pub, pubkey, pubkey_len) < 0 ||
     bignum_cmp_d(pub, 1) <= 0)
  goto fail;

 if (order) {
  struct bignum *p, *q, *tmp;
  int failed;


  p = bignum_init();
  q = bignum_init();
  tmp = bignum_init();
  failed = !p || !q || !tmp ||
   bignum_set_unsigned_bin(p, prime, prime_len) < 0 ||
   bignum_set_unsigned_bin(q, order, order_len) < 0 ||
   bignum_exptmod(pub, q, p, tmp) < 0 ||
   bignum_cmp_d(tmp, 1) != 0;
  bignum_deinit(p);
  bignum_deinit(q);
  bignum_deinit(tmp);
  if (failed)
   goto fail;
 }

 res = crypto_mod_exp(pubkey, pubkey_len, privkey, privkey_len,
        prime, prime_len, secret, len);
fail:
 bignum_deinit(pub);
 return res;
}
