
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_mod (int *,int const*,int const*,int *) ;

int crypto_bignum_mod(const struct crypto_bignum *a,
        const struct crypto_bignum *b,
        struct crypto_bignum *c)
{
 int res;
 BN_CTX *bnctx;

 bnctx = BN_CTX_new();
 if (bnctx == ((void*)0))
  return -1;
 res = BN_mod((BIGNUM *) c, (const BIGNUM *) a, (const BIGNUM *) b,
       bnctx);
 BN_CTX_free(bnctx);

 return res ? 0 : -1;
}
