
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_ttls_data {int * phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int (* deinit ) (struct eap_sm*,int *) ;} ;


 int stub1 (struct eap_sm*,int *) ;

__attribute__((used)) static void eap_ttls_phase2_eap_deinit(struct eap_sm *sm,
           struct eap_ttls_data *data)
{
 if (data->phase2_priv && data->phase2_method) {
  data->phase2_method->deinit(sm, data->phase2_priv);
  data->phase2_method = ((void*)0);
  data->phase2_priv = ((void*)0);
 }
}
