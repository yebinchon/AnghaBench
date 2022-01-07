
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wps; int workaround; int fast_reauth; int required_keys; int accept_802_1x_keys; } ;
struct eapol_sm {int use_eap_proxy; scalar_t__ eap; TYPE_1__ conf; int eap_proxy; struct eap_peer_config* config; } ;
struct eapol_config {int external_sim; int eap_disabled; int workaround; int fast_reauth; int wps; int required_keys; int accept_802_1x_keys; } ;
struct eap_peer_config {int dummy; } ;


 scalar_t__ eap_proxy_notify_config (int ,struct eap_peer_config*) ;
 int eap_set_external_sim (scalar_t__,int ) ;
 int eap_set_fast_reauth (scalar_t__,int ) ;
 int eap_set_force_disabled (scalar_t__,int ) ;
 int eap_set_workaround (scalar_t__,int ) ;

void eapol_sm_notify_config(struct eapol_sm *sm,
       struct eap_peer_config *config,
       const struct eapol_config *conf)
{
 if (sm == ((void*)0))
  return;

 sm->config = config;




 if (conf == ((void*)0))
  return;

 sm->conf.accept_802_1x_keys = conf->accept_802_1x_keys;
 sm->conf.required_keys = conf->required_keys;
 sm->conf.fast_reauth = conf->fast_reauth;
 sm->conf.workaround = conf->workaround;
 sm->conf.wps = conf->wps;






 if (sm->eap) {
  eap_set_fast_reauth(sm->eap, conf->fast_reauth);
  eap_set_workaround(sm->eap, conf->workaround);
  eap_set_force_disabled(sm->eap, conf->eap_disabled);
  eap_set_external_sim(sm->eap, conf->external_sim);
 }
}
