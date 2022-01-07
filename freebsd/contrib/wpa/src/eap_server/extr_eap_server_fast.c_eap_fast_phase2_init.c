
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eap_sm {int init_phase2; int * peer_challenge; int * auth_challenge; } ;
struct eap_fast_data {int * phase2_priv; TYPE_2__* phase2_method; TYPE_1__* key_block_p; } ;
struct TYPE_4__ {int * (* init ) (struct eap_sm*) ;int (* reset ) (struct eap_sm*,int *) ;} ;
struct TYPE_3__ {int * client_challenge; int * server_challenge; } ;
typedef int EapType ;


 int EAP_VENDOR_IETF ;
 TYPE_2__* eap_server_get_eap_method (int ,int ) ;
 int stub1 (struct eap_sm*,int *) ;
 int * stub2 (struct eap_sm*) ;

__attribute__((used)) static int eap_fast_phase2_init(struct eap_sm *sm, struct eap_fast_data *data,
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

 if (data->key_block_p) {
  sm->auth_challenge = data->key_block_p->server_challenge;
  sm->peer_challenge = data->key_block_p->client_challenge;
 }
 sm->init_phase2 = 1;
 data->phase2_priv = data->phase2_method->init(sm);
 sm->init_phase2 = 0;
 sm->auth_challenge = ((void*)0);
 sm->peer_challenge = ((void*)0);

 return data->phase2_priv == ((void*)0) ? -1 : 0;
}
