
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int ssl_ctx; } ;
struct TYPE_2__ {int conn; } ;
struct eap_fast_data {int simck; scalar_t__ simck_idx; TYPE_1__ ssl; } ;


 int EAP_FAST_SIMCK_LEN ;
 int EAP_FAST_SKS_LEN ;
 int MSG_DEBUG ;
 int * eap_fast_derive_key (int ,int ,int ) ;
 int os_free (int *) ;
 int os_memcpy (int ,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_fast_derive_key_auth(struct eap_sm *sm,
        struct eap_fast_data *data)
{
 u8 *sks;





 sks = eap_fast_derive_key(sm->ssl_ctx, data->ssl.conn,
      EAP_FAST_SKS_LEN);
 if (sks == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Failed to derive "
      "session_key_seed");
  return -1;
 }





 wpa_hexdump_key(MSG_DEBUG,
   "EAP-FAST: session_key_seed (SKS = S-IMCK[0])",
   sks, EAP_FAST_SKS_LEN);
 data->simck_idx = 0;
 os_memcpy(data->simck, sks, EAP_FAST_SIMCK_LEN);
 os_free(sks);
 return 0;
}
