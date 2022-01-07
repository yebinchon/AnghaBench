
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_bin2bn (int const*,size_t,int *) ;
 int BN_clear_free (int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 scalar_t__ BN_is_one (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int crypto_mod_exp (int const*,size_t,int const*,size_t,int const*,size_t,int *,size_t*) ;

int crypto_dh_derive_secret(u8 generator, const u8 *prime, size_t prime_len,
       const u8 *order, size_t order_len,
       const u8 *privkey, size_t privkey_len,
       const u8 *pubkey, size_t pubkey_len,
       u8 *secret, size_t *len)
{
 BIGNUM *pub, *p;
 int res = -1;

 pub = BN_bin2bn(pubkey, pubkey_len, ((void*)0));
 p = BN_bin2bn(prime, prime_len, ((void*)0));
 if (!pub || !p || BN_is_zero(pub) || BN_is_one(pub) ||
     BN_cmp(pub, p) >= 0)
  goto fail;

 if (order) {
  BN_CTX *ctx;
  BIGNUM *q, *tmp;
  int failed;


  q = BN_bin2bn(order, order_len, ((void*)0));
  ctx = BN_CTX_new();
  tmp = BN_new();
  failed = !q || !ctx || !tmp ||
   !BN_mod_exp(tmp, pub, q, p, ctx) ||
   !BN_is_one(tmp);
  BN_clear_free(q);
  BN_clear_free(tmp);
  BN_CTX_free(ctx);
  if (failed)
   goto fail;
 }

 res = crypto_mod_exp(pubkey, pubkey_len, privkey, privkey_len,
        prime, prime_len, secret, len);
fail:
 BN_clear_free(pub);
 BN_clear_free(p);
 return res;
}
