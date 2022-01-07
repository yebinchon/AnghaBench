
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int ssl_ctx; } ;
struct TYPE_2__ {int conn; } ;
struct eap_peap_data {int * cmk; int * ipmk; int peap_version; int phase2_eap_started; scalar_t__ reauth; int phase2_success; TYPE_1__ ssl; int * key_data; } ;
typedef int isk ;
typedef int imck ;


 int MSG_DEBUG ;
 scalar_t__ eap_peap_get_isk (struct eap_sm*,struct eap_peap_data*,int *,int) ;
 int forced_memzero (int *,int) ;
 int os_memcpy (int *,int *,int) ;
 int peap_prfplus (int ,int *,int,char*,int *,int,int *,int) ;
 int tls_connection_resumed (int ,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,scalar_t__,int,int ,int ) ;

__attribute__((used)) static int eap_peap_derive_cmk(struct eap_sm *sm, struct eap_peap_data *data)
{
 u8 *tk;
 u8 isk[32], imck[60];
 int resumed, res;





 tk = data->key_data;
 if (tk == ((void*)0))
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: TK", tk, 60);

 resumed = tls_connection_resumed(sm->ssl_ctx, data->ssl.conn);
 wpa_printf(MSG_DEBUG,
     "EAP-PEAP: CMK derivation - reauth=%d resumed=%d phase2_eap_started=%d phase2_success=%d",
     data->reauth, resumed, data->phase2_eap_started,
     data->phase2_success);
 if (data->reauth && !data->phase2_eap_started && resumed) {

  os_memcpy(data->ipmk, tk, 40);
  wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: IPMK from TK",
    data->ipmk, 40);
  os_memcpy(data->cmk, tk + 40, 20);
  wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: CMK from TK",
    data->cmk, 20);
  return 0;
 }

 if (eap_peap_get_isk(sm, data, isk, sizeof(isk)) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: ISK", isk, sizeof(isk));
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: TempKey", tk, 40);
 res = peap_prfplus(data->peap_version, tk, 40,
      "Inner Methods Compound Keys",
      isk, sizeof(isk), imck, sizeof(imck));
 forced_memzero(isk, sizeof(isk));
 if (res < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: IMCK (IPMKj)",
   imck, sizeof(imck));

 os_memcpy(data->ipmk, imck, 40);
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: IPMK (S-IPMKj)", data->ipmk, 40);
 os_memcpy(data->cmk, imck + 40, 20);
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: CMK (CMKj)", data->cmk, 20);
 forced_memzero(imck, sizeof(imck));

 return 0;
}
