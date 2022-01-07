
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int init_phase2; } ;
struct eap_peap_data {TYPE_1__* phase2_method; int * phase2_priv; } ;
struct TYPE_2__ {int * (* init ) (struct eap_sm*) ;int (* reset ) (struct eap_sm*,int *) ;} ;
typedef int EapType ;


 TYPE_1__* eap_server_get_eap_method (int,int ) ;
 int stub1 (struct eap_sm*,int *) ;
 int * stub2 (struct eap_sm*) ;

__attribute__((used)) static int eap_peap_phase2_init(struct eap_sm *sm, struct eap_peap_data *data,
    int vendor, EapType eap_type)
{
 if (data->phase2_priv && data->phase2_method) {
  data->phase2_method->reset(sm, data->phase2_priv);
  data->phase2_method = ((void*)0);
  data->phase2_priv = ((void*)0);
 }
 data->phase2_method = eap_server_get_eap_method(vendor, eap_type);
 if (!data->phase2_method)
  return -1;

 sm->init_phase2 = 1;
 data->phase2_priv = data->phase2_method->init(sm);
 sm->init_phase2 = 0;
 return 0;
}
