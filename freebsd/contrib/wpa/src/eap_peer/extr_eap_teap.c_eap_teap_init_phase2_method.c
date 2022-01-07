
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int method; int vendor; } ;
struct eap_teap_data {int * phase2_priv; TYPE_2__* phase2_method; TYPE_1__ phase2_type; scalar_t__ inner_method_done; } ;
struct eap_sm {int init_phase2; } ;
struct TYPE_4__ {int * (* init ) (struct eap_sm*) ;} ;


 TYPE_2__* eap_peer_get_eap_method (int ,int ) ;
 int * stub1 (struct eap_sm*) ;

__attribute__((used)) static int eap_teap_init_phase2_method(struct eap_sm *sm,
           struct eap_teap_data *data)
{
 data->inner_method_done = 0;
 data->phase2_method =
  eap_peer_get_eap_method(data->phase2_type.vendor,
     data->phase2_type.method);
 if (!data->phase2_method)
  return -1;

 sm->init_phase2 = 1;
 data->phase2_priv = data->phase2_method->init(sm);
 sm->init_phase2 = 0;

 return data->phase2_priv == ((void*)0) ? -1 : 0;
}
