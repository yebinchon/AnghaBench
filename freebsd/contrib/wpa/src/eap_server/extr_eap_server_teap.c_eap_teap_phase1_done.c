
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_teap_data {int anon_provisioning; TYPE_1__ ssl; int tls_cs; } ;
struct eap_sm {int ssl_ctx; } ;
typedef int cipher ;


 int FAILURE ;
 int MSG_DEBUG ;
 int PHASE2_START ;
 scalar_t__ eap_teap_derive_key_auth (struct eap_sm*,struct eap_teap_data*) ;
 int eap_teap_state (struct eap_teap_data*,int ) ;
 int * os_strstr (char*,char*) ;
 int tls_connection_get_cipher_suite (int ) ;
 scalar_t__ tls_get_cipher (int ,int ,char*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_teap_phase1_done(struct eap_sm *sm, struct eap_teap_data *data)
{
 char cipher[64];

 wpa_printf(MSG_DEBUG, "EAP-TEAP: Phase 1 done, starting Phase 2");

 data->tls_cs = tls_connection_get_cipher_suite(data->ssl.conn);
 wpa_printf(MSG_DEBUG, "EAP-TEAP: TLS cipher suite 0x%04x",
     data->tls_cs);

 if (tls_get_cipher(sm->ssl_ctx, data->ssl.conn, cipher, sizeof(cipher))
     < 0) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Failed to get cipher information");
  eap_teap_state(data, FAILURE);
  return -1;
 }
 data->anon_provisioning = os_strstr(cipher, "ADH") != ((void*)0);

 if (data->anon_provisioning)
  wpa_printf(MSG_DEBUG, "EAP-TEAP: Anonymous provisioning");

 if (eap_teap_derive_key_auth(sm, data) < 0) {
  eap_teap_state(data, FAILURE);
  return -1;
 }

 eap_teap_state(data, PHASE2_START);

 return 0;
}
