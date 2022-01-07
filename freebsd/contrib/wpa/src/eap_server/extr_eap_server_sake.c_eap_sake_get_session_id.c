
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_sake_data {scalar_t__ state; int rand_s; } ;


 int EAP_SAKE_RAND_LEN ;
 int EAP_TYPE_SAKE ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;

__attribute__((used)) static u8 * eap_sake_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_sake_data *data = priv;
 u8 *id;

 if (data->state != SUCCESS)
  return ((void*)0);

 *len = 1 + 2 * EAP_SAKE_RAND_LEN;
 id = os_malloc(*len);
 if (id == ((void*)0))
  return ((void*)0);

 id[0] = EAP_TYPE_SAKE;
 os_memcpy(id + 1, data->rand_s, EAP_SAKE_RAND_LEN);
 os_memcpy(id + 1 + EAP_SAKE_RAND_LEN, data->rand_s, EAP_SAKE_RAND_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-SAKE: Derived Session-Id", id, *len);

 return id;
}
