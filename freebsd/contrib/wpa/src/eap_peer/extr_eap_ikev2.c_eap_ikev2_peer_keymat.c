
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prf; } ;
struct TYPE_4__ {int r_nonce_len; int r_nonce; int i_nonce_len; int i_nonce; int keys; TYPE_1__ proposal; } ;
struct eap_ikev2_data {int keymat_ok; int keymat; TYPE_2__ ikev2; } ;


 int MSG_DEBUG ;
 scalar_t__ eap_ikev2_derive_keymat (int ,int *,int ,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_ikev2_peer_keymat(struct eap_ikev2_data *data)
{
 if (eap_ikev2_derive_keymat(
      data->ikev2.proposal.prf, &data->ikev2.keys,
      data->ikev2.i_nonce, data->ikev2.i_nonce_len,
      data->ikev2.r_nonce, data->ikev2.r_nonce_len,
      data->keymat) < 0) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Failed to "
      "derive key material");
  return -1;
 }
 data->keymat_ok = 1;
 return 0;
}
