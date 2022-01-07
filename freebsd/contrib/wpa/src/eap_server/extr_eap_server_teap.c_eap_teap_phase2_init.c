
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_teap_data {int * phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int init_phase2; } ;
struct TYPE_2__ {int * (* init ) (struct eap_sm*) ;int (* reset ) (struct eap_sm*,int *) ;} ;
typedef int EapType ;


 int EAP_VENDOR_IETF ;
 TYPE_1__* eap_server_get_eap_method (int ,int ) ;
 int stub1 (struct eap_sm*,int *) ;
 int * stub2 (struct eap_sm*) ;

__attribute__((used)) static int eap_teap_phase2_init(struct eap_sm *sm, struct eap_teap_data *data,
    EapType eap_type)
{
 if (data->phase2_priv && data->phase2_method) {
  data->phase2_method->reset(sm, data->phase2_priv);
  data->phase2_method = ((void*)0);
  data->phase2_priv = ((void*)0);
 }
 data->phase2_method = eap_server_get_eap_method(EAP_VENDOR_IETF,
       eap_type);
 if (!data->phase2_method)
  return -1;

 sm->init_phase2 = 1;
 data->phase2_priv = data->phase2_method->init(sm);
 sm->init_phase2 = 0;

 return data->phase2_priv ? 0 : -1;
}
