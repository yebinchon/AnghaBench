
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_mod_exp_mont_consttime (int *,int const*,int const*,int const*,int *,int *) ;
 scalar_t__ TEST_FAIL () ;

int crypto_bignum_exptmod(const struct crypto_bignum *a,
     const struct crypto_bignum *b,
     const struct crypto_bignum *c,
     struct crypto_bignum *d)
{
 int res;
 BN_CTX *bnctx;

 if (TEST_FAIL())
  return -1;

 bnctx = BN_CTX_new();
 if (bnctx == ((void*)0))
  return -1;
 res = BN_mod_exp_mont_consttime((BIGNUM *) d, (const BIGNUM *) a,
     (const BIGNUM *) b, (const BIGNUM *) c,
     bnctx, ((void*)0));
 BN_CTX_free(bnctx);

 return res ? 0 : -1;
}
