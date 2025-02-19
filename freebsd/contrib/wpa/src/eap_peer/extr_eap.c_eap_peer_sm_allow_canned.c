
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ phase1; } ;


 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 scalar_t__ os_strstr (scalar_t__,char*) ;

__attribute__((used)) static int eap_peer_sm_allow_canned(struct eap_sm *sm)
{
 struct eap_peer_config *config = eap_get_config(sm);

 return config && config->phase1 &&
  os_strstr(config->phase1, "allow_canned_success=1");
}
