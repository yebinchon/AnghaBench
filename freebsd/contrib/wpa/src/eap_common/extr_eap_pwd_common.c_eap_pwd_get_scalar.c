
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_bignum {int dummy; } ;
struct TYPE_3__ {int group; } ;
typedef TYPE_1__ EAP_PWD_group ;


 int MSG_INFO ;
 scalar_t__ crypto_bignum_cmp (struct crypto_bignum*,struct crypto_bignum const*) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int ) ;
 struct crypto_bignum* crypto_bignum_init_set (int const*,size_t) ;
 scalar_t__ crypto_bignum_is_one (struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_is_zero (struct crypto_bignum*) ;
 struct crypto_bignum* crypto_ec_get_order (int ) ;
 size_t crypto_ec_order_len (int ) ;
 int wpa_printf (int ,char*) ;

struct crypto_bignum * eap_pwd_get_scalar(EAP_PWD_group *group, const u8 *buf)
{
 struct crypto_bignum *scalar;
 const struct crypto_bignum *order;
 size_t order_len;

 order = crypto_ec_get_order(group->group);
 order_len = crypto_ec_order_len(group->group);


 scalar = crypto_bignum_init_set(buf, order_len);
 if (!scalar || crypto_bignum_is_zero(scalar) ||
     crypto_bignum_is_one(scalar) ||
     crypto_bignum_cmp(scalar, order) >= 0) {
  wpa_printf(MSG_INFO, "EAP-pwd: received scalar is invalid");
  crypto_bignum_deinit(scalar, 0);
  scalar = ((void*)0);
 }

 return scalar;
}
