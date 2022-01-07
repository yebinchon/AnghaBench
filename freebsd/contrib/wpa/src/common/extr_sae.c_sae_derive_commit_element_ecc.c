
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sae_data {TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {scalar_t__ own_commit_element_ecc; int ec; int pwe_ecc; } ;


 int MSG_DEBUG ;
 scalar_t__ crypto_ec_point_init (int ) ;
 scalar_t__ crypto_ec_point_invert (int ,scalar_t__) ;
 scalar_t__ crypto_ec_point_mul (int ,int ,struct crypto_bignum*,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int sae_derive_commit_element_ecc(struct sae_data *sae,
      struct crypto_bignum *mask)
{

 if (!sae->tmp->own_commit_element_ecc) {
  sae->tmp->own_commit_element_ecc =
   crypto_ec_point_init(sae->tmp->ec);
  if (!sae->tmp->own_commit_element_ecc)
   return -1;
 }

 if (crypto_ec_point_mul(sae->tmp->ec, sae->tmp->pwe_ecc, mask,
    sae->tmp->own_commit_element_ecc) < 0 ||
     crypto_ec_point_invert(sae->tmp->ec,
       sae->tmp->own_commit_element_ecc) < 0) {
  wpa_printf(MSG_DEBUG, "SAE: Could not compute commit-element");
  return -1;
 }

 return 0;
}
