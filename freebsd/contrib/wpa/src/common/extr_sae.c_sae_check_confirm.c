
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
struct sae_data {TYPE_1__* tmp; int peer_commit_scalar; } ;
struct TYPE_2__ {int own_commit_element_ffc; int own_commit_scalar; int peer_commit_element_ffc; int own_commit_element_ecc; int peer_commit_element_ecc; scalar_t__ ec; } ;


 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPA_GET_LE16 (int const*) ;
 scalar_t__ os_memcmp_const (int const*,int const*,int) ;
 int sae_cn_confirm_ecc (struct sae_data*,int const*,int ,int ,int ,int ,int const*) ;
 int sae_cn_confirm_ffc (struct sae_data*,int const*,int ,int ,int ,int ,int const*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

int sae_check_confirm(struct sae_data *sae, const u8 *data, size_t len)
{
 u8 verifier[SHA256_MAC_LEN];

 if (len < 2 + SHA256_MAC_LEN) {
  wpa_printf(MSG_DEBUG, "SAE: Too short confirm message");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "SAE: peer-send-confirm %u", WPA_GET_LE16(data));

 if (!sae->tmp || !sae->peer_commit_scalar ||
     !sae->tmp->own_commit_scalar) {
  wpa_printf(MSG_DEBUG, "SAE: Temporary data not yet available");
  return -1;
 }

 if (sae->tmp->ec) {
  if (!sae->tmp->peer_commit_element_ecc ||
      !sae->tmp->own_commit_element_ecc)
   return -1;
  sae_cn_confirm_ecc(sae, data, sae->peer_commit_scalar,
       sae->tmp->peer_commit_element_ecc,
       sae->tmp->own_commit_scalar,
       sae->tmp->own_commit_element_ecc,
       verifier);
 } else {
  if (!sae->tmp->peer_commit_element_ffc ||
      !sae->tmp->own_commit_element_ffc)
   return -1;
  sae_cn_confirm_ffc(sae, data, sae->peer_commit_scalar,
       sae->tmp->peer_commit_element_ffc,
       sae->tmp->own_commit_scalar,
       sae->tmp->own_commit_element_ffc,
       verifier);
 }

 if (os_memcmp_const(verifier, data + 2, SHA256_MAC_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "SAE: Confirm mismatch");
  wpa_hexdump(MSG_DEBUG, "SAE: Received confirm",
       data + 2, SHA256_MAC_LEN);
  wpa_hexdump(MSG_DEBUG, "SAE: Calculated verifier",
       verifier, SHA256_MAC_LEN);
  return -1;
 }

 return 0;
}
