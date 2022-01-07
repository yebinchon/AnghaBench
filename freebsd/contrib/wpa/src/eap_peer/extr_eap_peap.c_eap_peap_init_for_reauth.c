
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int peap_done; } ;
struct eap_peap_data {int resuming; int reauth; scalar_t__ phase2_eap_started; scalar_t__ phase2_eap_success; scalar_t__ phase2_success; scalar_t__ phase2_priv; TYPE_1__* phase2_method; int ssl; struct eap_peap_data* session_id; } ;
struct TYPE_2__ {int (* init_for_reauth ) (struct eap_sm*,scalar_t__) ;} ;


 int FALSE ;
 int eap_peap_free_key (struct eap_peap_data*) ;
 scalar_t__ eap_peer_tls_reauth_init (struct eap_sm*,int *) ;
 int os_free (struct eap_peap_data*) ;
 int stub1 (struct eap_sm*,scalar_t__) ;

__attribute__((used)) static void * eap_peap_init_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_peap_data *data = priv;
 eap_peap_free_key(data);
 os_free(data->session_id);
 data->session_id = ((void*)0);
 if (eap_peer_tls_reauth_init(sm, &data->ssl)) {
  os_free(data);
  return ((void*)0);
 }
 if (data->phase2_priv && data->phase2_method &&
     data->phase2_method->init_for_reauth)
  data->phase2_method->init_for_reauth(sm, data->phase2_priv);
 data->phase2_success = 0;
 data->phase2_eap_success = 0;
 data->phase2_eap_started = 0;
 data->resuming = 1;
 data->reauth = 1;
 sm->peap_done = FALSE;
 return priv;
}
