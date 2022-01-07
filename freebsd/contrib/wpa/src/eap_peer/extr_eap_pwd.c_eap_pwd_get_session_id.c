
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {scalar_t__ state; int session_id; } ;


 int SHA256_MAC_LEN ;
 scalar_t__ SUCCESS ;
 int * os_memdup (int ,int) ;

__attribute__((used)) static u8 * eap_pwd_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_pwd_data *data = priv;
 u8 *id;

 if (data->state != SUCCESS)
  return ((void*)0);

 id = os_memdup(data->session_id, 1 + SHA256_MAC_LEN);
 if (id == ((void*)0))
  return ((void*)0);

 *len = 1 + SHA256_MAC_LEN;

 return id;
}
