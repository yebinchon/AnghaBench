
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_teap_pac {struct eap_teap_pac* next; } ;
struct eap_teap_data {struct eap_teap_pac* pac; int ssl; struct eap_teap_data* phase2_types; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int (* deinit ) (struct eap_sm*,scalar_t__) ;} ;


 int eap_peer_tls_ssl_deinit (struct eap_sm*,int *) ;
 int eap_teap_clear (struct eap_teap_data*) ;
 int eap_teap_free_pac (struct eap_teap_pac*) ;
 int os_free (struct eap_teap_data*) ;
 int stub1 (struct eap_sm*,scalar_t__) ;

__attribute__((used)) static void eap_teap_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_teap_data *data = priv;
 struct eap_teap_pac *pac, *prev;

 if (!data)
  return;
 if (data->phase2_priv && data->phase2_method)
  data->phase2_method->deinit(sm, data->phase2_priv);
 eap_teap_clear(data);
 os_free(data->phase2_types);
 eap_peer_tls_ssl_deinit(sm, &data->ssl);

 pac = data->pac;
 prev = ((void*)0);
 while (pac) {
  prev = pac;
  pac = pac->next;
  eap_teap_free_pac(prev);
 }

 os_free(data);
}
