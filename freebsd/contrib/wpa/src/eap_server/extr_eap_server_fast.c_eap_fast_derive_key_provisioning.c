
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int ssl_ctx; } ;
struct eap_fast_key_block_provisioning {int client_challenge; int server_challenge; int session_key_seed; } ;
struct TYPE_2__ {int conn; } ;
struct eap_fast_data {struct eap_fast_key_block_provisioning* key_block_p; int simck; scalar_t__ simck_idx; TYPE_1__ ssl; } ;


 int EAP_FAST_SIMCK_LEN ;
 int MSG_DEBUG ;
 scalar_t__ eap_fast_derive_key (int ,int ,int) ;
 int os_free (struct eap_fast_key_block_provisioning*) ;
 int os_memcpy (int ,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_fast_derive_key_provisioning(struct eap_sm *sm,
          struct eap_fast_data *data)
{
 os_free(data->key_block_p);
 data->key_block_p = (struct eap_fast_key_block_provisioning *)
  eap_fast_derive_key(sm->ssl_ctx, data->ssl.conn,
        sizeof(*data->key_block_p));
 if (data->key_block_p == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Failed to derive key block");
  return;
 }




 wpa_hexdump_key(MSG_DEBUG,
   "EAP-FAST: session_key_seed (SKS = S-IMCK[0])",
   data->key_block_p->session_key_seed,
   sizeof(data->key_block_p->session_key_seed));
 data->simck_idx = 0;
 os_memcpy(data->simck, data->key_block_p->session_key_seed,
    EAP_FAST_SIMCK_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-FAST: server_challenge",
   data->key_block_p->server_challenge,
   sizeof(data->key_block_p->server_challenge));
 wpa_hexdump_key(MSG_DEBUG, "EAP-FAST: client_challenge",
   data->key_block_p->client_challenge,
   sizeof(data->key_block_p->client_challenge));
}
