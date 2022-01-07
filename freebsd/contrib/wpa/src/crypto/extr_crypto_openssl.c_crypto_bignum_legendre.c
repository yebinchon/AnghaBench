
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int *) ;
 int BN_is_word (int *,int) ;
 int BN_is_zero (int *) ;
 int BN_mod_exp_mont_consttime (int *,int const*,int *,int const*,int *,int *) ;
 int * BN_new () ;
 int BN_rshift1 (int *,int *) ;
 int BN_sub (int *,int const*,int ) ;
 int BN_value_one () ;
 scalar_t__ TEST_FAIL () ;
 unsigned int const_time_eq (int ,int) ;
 int const_time_select_int (unsigned int,int,int) ;

int crypto_bignum_legendre(const struct crypto_bignum *a,
      const struct crypto_bignum *p)
{
 BN_CTX *bnctx;
 BIGNUM *exp = ((void*)0), *tmp = ((void*)0);
 int res = -2;
 unsigned int mask;

 if (TEST_FAIL())
  return -2;

 bnctx = BN_CTX_new();
 if (bnctx == ((void*)0))
  return -2;

 exp = BN_new();
 tmp = BN_new();
 if (!exp || !tmp ||

     !BN_sub(exp, (const BIGNUM *) p, BN_value_one()) ||
     !BN_rshift1(exp, exp) ||
     !BN_mod_exp_mont_consttime(tmp, (const BIGNUM *) a, exp,
           (const BIGNUM *) p, bnctx, ((void*)0)))
  goto fail;



 res = -1;
 mask = const_time_eq(BN_is_word(tmp, 1), 1);
 res = const_time_select_int(mask, 1, res);
 mask = const_time_eq(BN_is_zero(tmp), 1);
 res = const_time_select_int(mask, 0, res);

fail:
 BN_clear_free(tmp);
 BN_clear_free(exp);
 BN_CTX_free(bnctx);
 return res;
}
