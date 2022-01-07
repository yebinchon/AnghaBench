
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sae_data {TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {scalar_t__ own_commit_element_ffc; int prime; int pwe_ffc; } ;


 int MSG_DEBUG ;
 scalar_t__ crypto_bignum_exptmod (int ,struct crypto_bignum*,int ,scalar_t__) ;
 scalar_t__ crypto_bignum_init () ;
 scalar_t__ crypto_bignum_inverse (scalar_t__,int ,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int sae_derive_commit_element_ffc(struct sae_data *sae,
      struct crypto_bignum *mask)
{

 if (!sae->tmp->own_commit_element_ffc) {
  sae->tmp->own_commit_element_ffc = crypto_bignum_init();
  if (!sae->tmp->own_commit_element_ffc)
   return -1;
 }

 if (crypto_bignum_exptmod(sae->tmp->pwe_ffc, mask, sae->tmp->prime,
      sae->tmp->own_commit_element_ffc) < 0 ||
     crypto_bignum_inverse(sae->tmp->own_commit_element_ffc,
      sae->tmp->prime,
      sae->tmp->own_commit_element_ffc) < 0) {
  wpa_printf(MSG_DEBUG, "SAE: Could not compute commit-element");
  return -1;
 }

 return 0;
}
