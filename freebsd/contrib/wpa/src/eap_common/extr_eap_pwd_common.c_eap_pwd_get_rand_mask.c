
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_bignum {int dummy; } ;
struct TYPE_3__ {int group; } ;
typedef TYPE_1__ EAP_PWD_group ;


 int crypto_ec_get_order (int ) ;
 int dragonfly_generate_scalar (int ,struct crypto_bignum*,struct crypto_bignum*,struct crypto_bignum*) ;

int eap_pwd_get_rand_mask(EAP_PWD_group *group, struct crypto_bignum *_rand,
     struct crypto_bignum *_mask,
     struct crypto_bignum *scalar)
{
 return dragonfly_generate_scalar(crypto_ec_get_order(group->group),
      _rand, _mask, scalar);
}
