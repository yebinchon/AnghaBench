
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int * BN_mod_inverse (int *,int const*,int const*,int *) ;
 int BN_set_flags (int *,int ) ;
 scalar_t__ TEST_FAIL () ;

int crypto_bignum_inverse(const struct crypto_bignum *a,
     const struct crypto_bignum *b,
     struct crypto_bignum *c)
{
 BIGNUM *res;
 BN_CTX *bnctx;

 if (TEST_FAIL())
  return -1;
 bnctx = BN_CTX_new();
 if (bnctx == ((void*)0))
  return -1;



 BN_set_flags((BIGNUM *) a, BN_FLG_CONSTTIME);

 res = BN_mod_inverse((BIGNUM *) c, (const BIGNUM *) a,
        (const BIGNUM *) b, bnctx);
 BN_CTX_free(bnctx);

 return res ? 0 : -1;
}
