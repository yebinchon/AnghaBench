
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int ssl_ctx; } ;
struct TYPE_2__ {int conn; } ;
struct eap_peap_data {int * cmk; int * ipmk; int peap_version; TYPE_1__ ssl; } ;
typedef int isk ;
typedef int imck ;


 int EAP_TLS_KEY_LEN ;
 int MSG_DEBUG ;
 int eap_peap_get_isk (struct eap_peap_data*,int *,int) ;
 int * eap_server_tls_derive_key (struct eap_sm*,TYPE_1__*,char*,int *,int ,int ) ;
 int forced_memzero (int *,int) ;
 int os_free (int *) ;
 int os_memcpy (int *,int *,int) ;
 int peap_prfplus (int ,int *,int,char*,int *,int,int *,int) ;
 scalar_t__ tls_connection_resumed (int ,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;

__attribute__((used)) static int eap_peap_derive_cmk(struct eap_sm *sm, struct eap_peap_data *data)
{
 u8 *tk;
 u8 isk[32], imck[60];
 int res;





 tk = eap_server_tls_derive_key(sm, &data->ssl, "client EAP encryption",
           ((void*)0), 0, EAP_TLS_KEY_LEN);
 if (tk == ((void*)0))
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: TK", tk, 60);

 if (tls_connection_resumed(sm->ssl_ctx, data->ssl.conn)) {

  os_memcpy(data->ipmk, tk, 40);
  wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: IPMK from TK",
    data->ipmk, 40);
  os_memcpy(data->cmk, tk + 40, 20);
  wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: CMK from TK",
    data->cmk, 20);
  os_free(tk);
  return 0;
 }

 eap_peap_get_isk(data, isk, sizeof(isk));
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: ISK", isk, sizeof(isk));
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: TempKey", tk, 40);
 res = peap_prfplus(data->peap_version, tk, 40,
      "Inner Methods Compound Keys",
      isk, sizeof(isk), imck, sizeof(imck));
 forced_memzero(isk, sizeof(isk));
 if (res < 0) {
  os_free(tk);
  return -1;
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: IMCK (IPMKj)",
   imck, sizeof(imck));

 os_free(tk);

 os_memcpy(data->ipmk, imck, 40);
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: IPMK (S-IPMKj)", data->ipmk, 40);
 os_memcpy(data->cmk, imck + 40, 20);
 wpa_hexdump_key(MSG_DEBUG, "EAP-PEAP: CMK (CMKj)", data->cmk, 20);
 forced_memzero(imck, sizeof(imck));

 return 0;
}
