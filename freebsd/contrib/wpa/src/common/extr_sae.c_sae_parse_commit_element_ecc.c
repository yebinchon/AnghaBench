
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sae_data {TYPE_1__* tmp; } ;
typedef int prime ;
struct TYPE_2__ {int prime_len; int * peer_commit_element_ecc; int ec; int prime; } ;


 int MSG_DEBUG ;
 int SAE_MAX_ECC_PRIME_LEN ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 scalar_t__ crypto_bignum_to_bin (int ,int *,int,int) ;
 int crypto_ec_point_deinit (int *,int ) ;
 int * crypto_ec_point_from_bin (int ,int const*) ;
 int crypto_ec_point_is_on_curve (int ,int *) ;
 scalar_t__ os_memcmp (int const*,int *,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u16 sae_parse_commit_element_ecc(struct sae_data *sae, const u8 **pos,
     const u8 *end)
{
 u8 prime[SAE_MAX_ECC_PRIME_LEN];

 if (2 * sae->tmp->prime_len > end - *pos) {
  wpa_printf(MSG_DEBUG, "SAE: Not enough data for "
      "commit-element");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 if (crypto_bignum_to_bin(sae->tmp->prime, prime, sizeof(prime),
     sae->tmp->prime_len) < 0)
  return WLAN_STATUS_UNSPECIFIED_FAILURE;


 if (os_memcmp(*pos, prime, sae->tmp->prime_len) >= 0 ||
     os_memcmp(*pos + sae->tmp->prime_len, prime,
        sae->tmp->prime_len) >= 0) {
  wpa_printf(MSG_DEBUG, "SAE: Invalid coordinates in peer "
      "element");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 wpa_hexdump(MSG_DEBUG, "SAE: Peer commit-element(x)",
      *pos, sae->tmp->prime_len);
 wpa_hexdump(MSG_DEBUG, "SAE: Peer commit-element(y)",
      *pos + sae->tmp->prime_len, sae->tmp->prime_len);

 crypto_ec_point_deinit(sae->tmp->peer_commit_element_ecc, 0);
 sae->tmp->peer_commit_element_ecc =
  crypto_ec_point_from_bin(sae->tmp->ec, *pos);
 if (sae->tmp->peer_commit_element_ecc == ((void*)0))
  return WLAN_STATUS_UNSPECIFIED_FAILURE;

 if (!crypto_ec_point_is_on_curve(sae->tmp->ec,
      sae->tmp->peer_commit_element_ecc)) {
  wpa_printf(MSG_DEBUG, "SAE: Peer element is not on curve");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 *pos += 2 * sae->tmp->prime_len;

 return WLAN_STATUS_SUCCESS;
}
