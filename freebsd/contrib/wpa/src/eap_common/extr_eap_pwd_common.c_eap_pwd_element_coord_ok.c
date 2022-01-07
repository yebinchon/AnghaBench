
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_bignum {int dummy; } ;


 scalar_t__ crypto_bignum_cmp (struct crypto_bignum*,struct crypto_bignum const*) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int ) ;
 struct crypto_bignum* crypto_bignum_init_set (int const*,size_t) ;
 scalar_t__ crypto_bignum_is_zero (struct crypto_bignum*) ;

__attribute__((used)) static int eap_pwd_element_coord_ok(const struct crypto_bignum *prime,
        const u8 *buf, size_t len)
{
 struct crypto_bignum *val;
 int ok = 1;

 val = crypto_bignum_init_set(buf, len);
 if (!val || crypto_bignum_is_zero(val) ||
     crypto_bignum_cmp(val, prime) >= 0)
  ok = 0;
 crypto_bignum_deinit(val, 0);
 return ok;
}
