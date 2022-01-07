
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sae_data {TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
typedef int one_bin ;
struct TYPE_2__ {int prime_len; int prime; int order; struct crypto_bignum* peer_commit_element_ffc; } ;


 int MSG_DEBUG ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 scalar_t__ crypto_bignum_cmp (struct crypto_bignum*,struct crypto_bignum*) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int ) ;
 scalar_t__ crypto_bignum_exptmod (struct crypto_bignum*,int ,int ,struct crypto_bignum*) ;
 struct crypto_bignum* crypto_bignum_init () ;
 void* crypto_bignum_init_set (int const*,int) ;
 scalar_t__ crypto_bignum_is_one (struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_is_zero (struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_sub (int ,struct crypto_bignum*,struct crypto_bignum*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u16 sae_parse_commit_element_ffc(struct sae_data *sae, const u8 **pos,
     const u8 *end)
{
 struct crypto_bignum *res, *one;
 const u8 one_bin[1] = { 0x01 };

 if (sae->tmp->prime_len > end - *pos) {
  wpa_printf(MSG_DEBUG, "SAE: Not enough data for "
      "commit-element");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }
 wpa_hexdump(MSG_DEBUG, "SAE: Peer commit-element", *pos,
      sae->tmp->prime_len);

 crypto_bignum_deinit(sae->tmp->peer_commit_element_ffc, 0);
 sae->tmp->peer_commit_element_ffc =
  crypto_bignum_init_set(*pos, sae->tmp->prime_len);
 if (sae->tmp->peer_commit_element_ffc == ((void*)0))
  return WLAN_STATUS_UNSPECIFIED_FAILURE;

 res = crypto_bignum_init();
 one = crypto_bignum_init_set(one_bin, sizeof(one_bin));
 if (!res || !one ||
     crypto_bignum_sub(sae->tmp->prime, one, res) ||
     crypto_bignum_is_zero(sae->tmp->peer_commit_element_ffc) ||
     crypto_bignum_is_one(sae->tmp->peer_commit_element_ffc) ||
     crypto_bignum_cmp(sae->tmp->peer_commit_element_ffc, res) >= 0) {
  crypto_bignum_deinit(res, 0);
  crypto_bignum_deinit(one, 0);
  wpa_printf(MSG_DEBUG, "SAE: Invalid peer element");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }
 crypto_bignum_deinit(one, 0);


 if (crypto_bignum_exptmod(sae->tmp->peer_commit_element_ffc,
      sae->tmp->order, sae->tmp->prime, res) < 0 ||
     !crypto_bignum_is_one(res)) {
  wpa_printf(MSG_DEBUG, "SAE: Invalid peer element (scalar-op)");
  crypto_bignum_deinit(res, 0);
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }
 crypto_bignum_deinit(res, 0);

 *pos += sae->tmp->prime_len;

 return WLAN_STATUS_SUCCESS;
}
