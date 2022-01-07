
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_bignum {int dummy; } ;


 scalar_t__ crypto_bignum_add (struct crypto_bignum*,struct crypto_bignum*,struct crypto_bignum*) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int ) ;
 struct crypto_bignum* crypto_bignum_init () ;
 struct crypto_bignum* crypto_bignum_init_set (int const*,int) ;
 scalar_t__ crypto_bignum_rand (struct crypto_bignum*,struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_sub (struct crypto_bignum const*,struct crypto_bignum*,struct crypto_bignum*) ;

__attribute__((used)) static struct crypto_bignum *
dragonfly_get_rand_1_to_p_1(const struct crypto_bignum *prime)
{
 struct crypto_bignum *tmp, *pm1, *one;

 tmp = crypto_bignum_init();
 pm1 = crypto_bignum_init();
 one = crypto_bignum_init_set((const u8 *) "\x01", 1);
 if (!tmp || !pm1 || !one ||
     crypto_bignum_sub(prime, one, pm1) < 0 ||
     crypto_bignum_rand(tmp, pm1) < 0 ||
     crypto_bignum_add(tmp, one, tmp) < 0) {
  crypto_bignum_deinit(tmp, 0);
  tmp = ((void*)0);
 }

 crypto_bignum_deinit(pm1, 0);
 crypto_bignum_deinit(one, 0);
 return tmp;
}
