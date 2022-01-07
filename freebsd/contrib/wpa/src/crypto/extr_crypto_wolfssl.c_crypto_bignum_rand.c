
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mp_int ;
typedef int WC_RNG ;


 scalar_t__ TEST_FAIL () ;
 int mp_count_bits (int *) ;
 scalar_t__ mp_mod (int *,int *,int *) ;
 scalar_t__ mp_rand_prime (int *,int,int *,int *) ;
 int wc_FreeRng (int *) ;
 scalar_t__ wc_InitRng (int *) ;

int crypto_bignum_rand(struct crypto_bignum *r, const struct crypto_bignum *m)
{
 int ret = 0;
 WC_RNG rng;

 if (TEST_FAIL())
  return -1;
 if (wc_InitRng(&rng) != 0)
  return -1;
 if (mp_rand_prime((mp_int *) r,
     (mp_count_bits((mp_int *) m) + 7) / 8 * 2,
     &rng, ((void*)0)) != 0)
  ret = -1;
 if (ret == 0 &&
     mp_mod((mp_int *) r, (mp_int *) m, (mp_int *) r) != 0)
  ret = -1;
 wc_FreeRng(&rng);
 return ret;
}
