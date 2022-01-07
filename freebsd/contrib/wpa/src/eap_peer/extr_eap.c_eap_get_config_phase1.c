
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_peer_config {char const* phase1; } ;


 struct eap_peer_config* eap_get_config (struct eap_sm*) ;

const char * eap_get_config_phase1(struct eap_sm *sm)
{
 struct eap_peer_config *config = eap_get_config(sm);
 if (config == ((void*)0))
  return ((void*)0);
 return config->phase1;
}
