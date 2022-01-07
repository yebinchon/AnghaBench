
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sae_data {scalar_t__ state; TYPE_1__* tmp; struct crypto_bignum* peer_commit_scalar; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int prime_len; struct crypto_bignum* order; } ;


 int MSG_DEBUG ;
 scalar_t__ SAE_ACCEPTED ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 scalar_t__ crypto_bignum_cmp (struct crypto_bignum*,struct crypto_bignum*) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int ) ;
 struct crypto_bignum* crypto_bignum_init_set (int const*,int) ;
 scalar_t__ crypto_bignum_is_one (struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_is_zero (struct crypto_bignum*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u16 sae_parse_commit_scalar(struct sae_data *sae, const u8 **pos,
       const u8 *end)
{
 struct crypto_bignum *peer_scalar;

 if (sae->tmp->prime_len > end - *pos) {
  wpa_printf(MSG_DEBUG, "SAE: Not enough data for scalar");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 peer_scalar = crypto_bignum_init_set(*pos, sae->tmp->prime_len);
 if (peer_scalar == ((void*)0))
  return WLAN_STATUS_UNSPECIFIED_FAILURE;







 if (sae->state == SAE_ACCEPTED && sae->peer_commit_scalar &&
     crypto_bignum_cmp(sae->peer_commit_scalar, peer_scalar) == 0) {
  wpa_printf(MSG_DEBUG, "SAE: Do not accept re-use of previous "
      "peer-commit-scalar");
  crypto_bignum_deinit(peer_scalar, 0);
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }


 if (crypto_bignum_is_zero(peer_scalar) ||
     crypto_bignum_is_one(peer_scalar) ||
     crypto_bignum_cmp(peer_scalar, sae->tmp->order) >= 0) {
  wpa_printf(MSG_DEBUG, "SAE: Invalid peer scalar");
  crypto_bignum_deinit(peer_scalar, 0);
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }


 crypto_bignum_deinit(sae->peer_commit_scalar, 0);
 sae->peer_commit_scalar = peer_scalar;
 wpa_hexdump(MSG_DEBUG, "SAE: Peer commit-scalar",
      *pos, sae->tmp->prime_len);
 *pos += sae->tmp->prime_len;

 return WLAN_STATUS_SUCCESS;
}
