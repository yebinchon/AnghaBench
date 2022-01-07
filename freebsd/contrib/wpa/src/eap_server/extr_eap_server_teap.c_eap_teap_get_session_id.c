
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int conn; } ;
struct eap_teap_data {scalar_t__ state; TYPE_1__ ssl; } ;
struct eap_sm {int dummy; } ;


 int EAP_TYPE_TEAP ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ SUCCESS ;
 int os_free (int *) ;
 int * os_malloc (size_t const) ;
 int tls_get_tls_unique (int ,int *,size_t const) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * eap_teap_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_teap_data *data = priv;
 const size_t max_id_len = 100;
 int res;
 u8 *id;

 if (data->state != SUCCESS)
  return ((void*)0);

 id = os_malloc(max_id_len);
 if (!id)
  return ((void*)0);

 id[0] = EAP_TYPE_TEAP;
 res = tls_get_tls_unique(data->ssl.conn, id + 1, max_id_len - 1);
 if (res < 0) {
  os_free(id);
  wpa_printf(MSG_ERROR, "EAP-TEAP: Failed to derive Session-Id");
  return ((void*)0);
 }

 *len = 1 + res;
 wpa_hexdump(MSG_DEBUG, "EAP-TEAP: Derived Session-Id", id, *len);
 return id;
}
