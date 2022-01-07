
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ec_point {int dummy; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_3__ {int group; } ;
typedef TYPE_1__ EAP_PWD_group ;


 int MSG_INFO ;
 struct crypto_bignum* crypto_ec_get_prime (int ) ;
 int crypto_ec_point_deinit (struct crypto_ec_point*,int ) ;
 struct crypto_ec_point* crypto_ec_point_from_bin (int ,int const*) ;
 scalar_t__ crypto_ec_point_is_at_infinity (int ,struct crypto_ec_point*) ;
 int crypto_ec_point_is_on_curve (int ,struct crypto_ec_point*) ;
 size_t crypto_ec_prime_len (int ) ;
 int eap_pwd_element_coord_ok (struct crypto_bignum const*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

struct crypto_ec_point * eap_pwd_get_element(EAP_PWD_group *group,
          const u8 *buf)
{
 struct crypto_ec_point *element;
 const struct crypto_bignum *prime;
 size_t prime_len;

 prime = crypto_ec_get_prime(group->group);
 prime_len = crypto_ec_prime_len(group->group);


 if (!eap_pwd_element_coord_ok(prime, buf, prime_len) ||
     !eap_pwd_element_coord_ok(prime, buf + prime_len, prime_len)) {
  wpa_printf(MSG_INFO, "EAP-pwd: Invalid coordinate in element");
  return ((void*)0);
 }

 element = crypto_ec_point_from_bin(group->group, buf);
 if (!element) {
  wpa_printf(MSG_INFO, "EAP-pwd: EC point from element failed");
  return ((void*)0);
 }


 if (!crypto_ec_point_is_on_curve(group->group, element) ||
     crypto_ec_point_is_at_infinity(group->group, element)) {
  wpa_printf(MSG_INFO, "EAP-pwd: Invalid element");
  goto fail;
 }

out:
 return element;
fail:
 crypto_ec_point_deinit(element, 0);
 element = ((void*)0);
 goto out;
}
