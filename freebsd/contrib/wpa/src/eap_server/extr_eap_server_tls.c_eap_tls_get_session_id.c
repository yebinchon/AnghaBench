
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_tls_data {scalar_t__ state; int ssl; } ;
struct eap_sm {int dummy; } ;


 int EAP_TYPE_TLS ;
 scalar_t__ SUCCESS ;
 int * eap_server_tls_derive_session_id (struct eap_sm*,int *,int ,size_t*) ;

__attribute__((used)) static u8 * eap_tls_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_tls_data *data = priv;

 if (data->state != SUCCESS)
  return ((void*)0);

 return eap_server_tls_derive_session_id(sm, &data->ssl, EAP_TYPE_TLS,
      len);
}
