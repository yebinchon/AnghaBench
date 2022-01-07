
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int ssl_ctx; } ;
struct TYPE_2__ {int conn; } ;
struct eap_fast_data {int anon_provisioning; TYPE_1__ ssl; } ;
typedef int cipher ;


 int FAILURE ;
 int MSG_DEBUG ;
 int PHASE2_START ;
 int eap_fast_derive_key_auth (struct eap_sm*,struct eap_fast_data*) ;
 int eap_fast_derive_key_provisioning (struct eap_sm*,struct eap_fast_data*) ;
 int eap_fast_state (struct eap_fast_data*,int ) ;
 int * os_strstr (char*,char*) ;
 scalar_t__ tls_get_cipher (int ,int ,char*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_fast_phase1_done(struct eap_sm *sm, struct eap_fast_data *data)
{
 char cipher[64];

 wpa_printf(MSG_DEBUG, "EAP-FAST: Phase1 done, starting Phase2");

 if (tls_get_cipher(sm->ssl_ctx, data->ssl.conn, cipher, sizeof(cipher))
     < 0) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Failed to get cipher "
      "information");
  eap_fast_state(data, FAILURE);
  return -1;
 }
 data->anon_provisioning = os_strstr(cipher, "ADH") != ((void*)0);

 if (data->anon_provisioning) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Anonymous provisioning");
  eap_fast_derive_key_provisioning(sm, data);
 } else
  eap_fast_derive_key_auth(sm, data);

 eap_fast_state(data, PHASE2_START);

 return 0;
}
