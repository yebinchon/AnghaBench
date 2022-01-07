
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int nonce_len; } ;
struct eap_eke_data {scalar_t__ state; TYPE_1__ sess; int nonce_s; int nonce_p; } ;


 int EAP_TYPE_EKE ;
 scalar_t__ SUCCESS ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;

__attribute__((used)) static u8 * eap_eke_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_eke_data *data = priv;
 u8 *sid;
 size_t sid_len;

 if (data->state != SUCCESS)
  return ((void*)0);

 sid_len = 1 + 2 * data->sess.nonce_len;
 sid = os_malloc(sid_len);
 if (sid == ((void*)0))
  return ((void*)0);
 sid[0] = EAP_TYPE_EKE;
 os_memcpy(sid + 1, data->nonce_p, data->sess.nonce_len);
 os_memcpy(sid + 1 + data->sess.nonce_len, data->nonce_s,
    data->sess.nonce_len);
 *len = sid_len;

 return sid;
}
