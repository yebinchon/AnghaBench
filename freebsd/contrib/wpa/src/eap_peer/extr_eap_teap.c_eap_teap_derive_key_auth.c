
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_teap_data {scalar_t__ simck_idx; int simck_msk; int simck_emsk; TYPE_1__ ssl; } ;
struct eap_sm {int ssl_ctx; } ;


 int EAP_TEAP_SIMCK_LEN ;
 int MSG_DEBUG ;
 int TEAP_TLS_EXPORTER_LABEL_SKS ;
 int os_memcpy (int ,int ,int ) ;
 int tls_connection_export_key (int ,int ,int ,int *,int ,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;

__attribute__((used)) static int eap_teap_derive_key_auth(struct eap_sm *sm,
        struct eap_teap_data *data)
{
 int res;


 res = tls_connection_export_key(sm->ssl_ctx, data->ssl.conn,
     TEAP_TLS_EXPORTER_LABEL_SKS, ((void*)0), 0,
     data->simck_msk, EAP_TEAP_SIMCK_LEN);
 if (res)
  return res;
 wpa_hexdump_key(MSG_DEBUG,
   "EAP-TEAP: session_key_seed (S-IMCK[0])",
   data->simck_msk, EAP_TEAP_SIMCK_LEN);
 os_memcpy(data->simck_emsk, data->simck_msk, EAP_TEAP_SIMCK_LEN);
 data->simck_idx = 0;
 return 0;
}
