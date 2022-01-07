
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_pax_data {scalar_t__ state; int mid; } ;


 int EAP_PAX_MID_LEN ;
 int EAP_TYPE_PAX ;
 scalar_t__ SUCCESS ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int ,int) ;

__attribute__((used)) static u8 * eap_pax_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_pax_data *data = priv;
 u8 *sid;

 if (data->state != SUCCESS)
  return ((void*)0);

 sid = os_malloc(1 + EAP_PAX_MID_LEN);
 if (sid == ((void*)0))
  return ((void*)0);

 *len = 1 + EAP_PAX_MID_LEN;
 sid[0] = EAP_TYPE_PAX;
 os_memcpy(sid + 1, data->mid, EAP_PAX_MID_LEN);

 return sid;
}
