
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_teap_data {TYPE_1__ ssl; } ;
struct eap_sm {int ssl_ctx; } ;


 int MSG_DEBUG ;
 int TLS_EXT_PAC_OPAQUE ;
 scalar_t__ tls_connection_client_hello_ext (int ,int ,int ,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_teap_clear_pac_opaque_ext(struct eap_sm *sm,
      struct eap_teap_data *data)
{
 if (tls_connection_client_hello_ext(sm->ssl_ctx, data->ssl.conn,
         TLS_EXT_PAC_OPAQUE, ((void*)0), 0) < 0) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Failed to remove PAC-Opaque TLS extension");
  return -1;
 }
 return 0;
}
