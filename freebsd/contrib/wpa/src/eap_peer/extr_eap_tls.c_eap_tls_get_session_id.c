
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_tls_data {size_t id_len; int * session_id; } ;
struct eap_sm {int dummy; } ;


 int * os_memdup (int *,size_t) ;

__attribute__((used)) static u8 * eap_tls_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_tls_data *data = priv;
 u8 *id;

 if (data->session_id == ((void*)0))
  return ((void*)0);

 id = os_memdup(data->session_id, data->id_len);
 if (id == ((void*)0))
  return ((void*)0);

 *len = data->id_len;

 return id;
}
