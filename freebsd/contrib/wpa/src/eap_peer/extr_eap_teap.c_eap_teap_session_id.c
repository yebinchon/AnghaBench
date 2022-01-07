
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_teap_data {int id_len; int * session_id; TYPE_1__ ssl; } ;


 int EAP_TYPE_TEAP ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int os_free (int *) ;
 int * os_malloc (size_t const) ;
 int tls_get_tls_unique (int ,int ,size_t const) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_teap_session_id(struct eap_teap_data *data)
{
 const size_t max_id_len = 100;
 int res;

 os_free(data->session_id);
 data->session_id = os_malloc(max_id_len);
 if (!data->session_id)
  return -1;

 data->session_id[0] = EAP_TYPE_TEAP;
 res = tls_get_tls_unique(data->ssl.conn, data->session_id + 1,
     max_id_len - 1);
 if (res < 0) {
  os_free(data->session_id);
  data->session_id = ((void*)0);
  wpa_printf(MSG_ERROR, "EAP-TEAP: Failed to derive Session-Id");
  return -1;
 }

 data->id_len = 1 + res;
 wpa_hexdump(MSG_DEBUG, "EAP-TEAP: Derived Session-Id",
      data->session_id, data->id_len);
 return 0;
}
