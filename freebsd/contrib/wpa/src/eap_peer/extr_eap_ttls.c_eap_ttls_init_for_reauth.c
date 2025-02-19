
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_ttls_data {int resuming; int reauth; scalar_t__ phase2_success; scalar_t__ phase2_start; scalar_t__ phase2_priv; TYPE_1__* phase2_method; int ssl; struct eap_ttls_data* session_id; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int (* init_for_reauth ) (struct eap_sm*,scalar_t__) ;} ;


 scalar_t__ eap_peer_tls_reauth_init (struct eap_sm*,int *) ;
 int eap_ttls_free_key (struct eap_ttls_data*) ;
 int os_free (struct eap_ttls_data*) ;
 int stub1 (struct eap_sm*,scalar_t__) ;

__attribute__((used)) static void * eap_ttls_init_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_ttls_data *data = priv;
 eap_ttls_free_key(data);
 os_free(data->session_id);
 data->session_id = ((void*)0);
 if (eap_peer_tls_reauth_init(sm, &data->ssl)) {
  os_free(data);
  return ((void*)0);
 }
 if (data->phase2_priv && data->phase2_method &&
     data->phase2_method->init_for_reauth)
  data->phase2_method->init_for_reauth(sm, data->phase2_priv);
 data->phase2_start = 0;
 data->phase2_success = 0;
 data->resuming = 1;
 data->reauth = 1;
 return priv;
}
