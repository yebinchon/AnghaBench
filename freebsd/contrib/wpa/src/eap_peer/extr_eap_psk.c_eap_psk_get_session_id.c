
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_psk_data {scalar_t__ state; int rand_s; int rand_p; } ;


 int EAP_PSK_RAND_LEN ;
 int EAP_TYPE_PSK ;
 int MSG_DEBUG ;
 scalar_t__ PSK_DONE ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;

__attribute__((used)) static u8 * eap_psk_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_psk_data *data = priv;
 u8 *id;

 if (data->state != PSK_DONE)
  return ((void*)0);

 *len = 1 + 2 * EAP_PSK_RAND_LEN;
 id = os_malloc(*len);
 if (id == ((void*)0))
  return ((void*)0);

 id[0] = EAP_TYPE_PSK;
 os_memcpy(id + 1, data->rand_p, EAP_PSK_RAND_LEN);
 os_memcpy(id + 1 + EAP_PSK_RAND_LEN, data->rand_s, EAP_PSK_RAND_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-PSK: Derived Session-Id", id, *len);

 return id;
}
