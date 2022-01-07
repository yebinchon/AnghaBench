
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct eap_sm {int init_phase2; int * peer_challenge; int * auth_challenge; } ;
struct TYPE_4__ {int method; int vendor; } ;
struct eap_fast_data {int * phase2_priv; TYPE_3__* phase2_method; TYPE_2__* key_block_p; TYPE_1__ phase2_type; } ;
struct TYPE_6__ {int * (* init ) (struct eap_sm*) ;} ;
struct TYPE_5__ {int * client_challenge; int * server_challenge; } ;


 TYPE_3__* eap_peer_get_eap_method (int ,int ) ;
 int * stub1 (struct eap_sm*) ;

__attribute__((used)) static int eap_fast_init_phase2_method(struct eap_sm *sm,
           struct eap_fast_data *data)
{
 data->phase2_method =
  eap_peer_get_eap_method(data->phase2_type.vendor,
     data->phase2_type.method);
 if (data->phase2_method == ((void*)0))
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
