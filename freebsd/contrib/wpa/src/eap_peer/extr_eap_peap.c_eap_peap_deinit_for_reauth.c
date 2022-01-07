
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ crypto_binding_used; int * pending_resp; int * pending_phase2_req; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int (* deinit_for_reauth ) (struct eap_sm*,scalar_t__) ;} ;


 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpabuf_clear_free (int *) ;

__attribute__((used)) static void eap_peap_deinit_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_peap_data *data = priv;

 if (data->phase2_priv && data->phase2_method &&
     data->phase2_method->deinit_for_reauth)
  data->phase2_method->deinit_for_reauth(sm, data->phase2_priv);
 wpabuf_clear_free(data->pending_phase2_req);
 data->pending_phase2_req = ((void*)0);
 wpabuf_clear_free(data->pending_resp);
 data->pending_resp = ((void*)0);
 data->crypto_binding_used = 0;
}
