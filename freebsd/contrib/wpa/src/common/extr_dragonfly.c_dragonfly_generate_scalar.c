
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;


 int MSG_INFO ;
 scalar_t__ crypto_bignum_add (struct crypto_bignum*,struct crypto_bignum*,struct crypto_bignum*) ;
 int crypto_bignum_is_one (struct crypto_bignum*) ;
 int crypto_bignum_is_zero (struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_mod (struct crypto_bignum*,struct crypto_bignum const*,struct crypto_bignum*) ;
 scalar_t__ dragonfly_get_rand_2_to_r_1 (struct crypto_bignum*,struct crypto_bignum const*) ;
 int wpa_printf (int ,char*) ;

int dragonfly_generate_scalar(const struct crypto_bignum *order,
         struct crypto_bignum *_rand,
         struct crypto_bignum *_mask,
         struct crypto_bignum *scalar)
{
 int count;



 for (count = 0; count < 100; count++) {
  if (dragonfly_get_rand_2_to_r_1(_rand, order) &&
      dragonfly_get_rand_2_to_r_1(_mask, order) &&
      crypto_bignum_add(_rand, _mask, scalar) == 0 &&
      crypto_bignum_mod(scalar, order, scalar) == 0 &&
      !crypto_bignum_is_zero(scalar) &&
      !crypto_bignum_is_one(scalar))
   return 0;
 }



 wpa_printf(MSG_INFO,
     "dragonfly: Unable to get randomness for own scalar");
 return -1;
}
