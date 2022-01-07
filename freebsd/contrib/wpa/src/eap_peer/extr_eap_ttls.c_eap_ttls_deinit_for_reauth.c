
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_ttls_data {scalar_t__ tnc_started; scalar_t__ ready_for_tnc; int decision_succ; int * pending_resp; int * pending_phase2_req; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int (* deinit_for_reauth ) (struct eap_sm*,scalar_t__) ;} ;


 int DECISION_FAIL ;
 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpabuf_clear_free (int *) ;

__attribute__((used)) static void eap_ttls_deinit_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_ttls_data *data = priv;

 if (data->phase2_priv && data->phase2_method &&
     data->phase2_method->deinit_for_reauth)
  data->phase2_method->deinit_for_reauth(sm, data->phase2_priv);
 wpabuf_clear_free(data->pending_phase2_req);
 data->pending_phase2_req = ((void*)0);
 wpabuf_clear_free(data->pending_resp);
 data->pending_resp = ((void*)0);
 data->decision_succ = DECISION_FAIL;




}
