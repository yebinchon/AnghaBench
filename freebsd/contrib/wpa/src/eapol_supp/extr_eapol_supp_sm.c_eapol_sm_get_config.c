
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {struct eap_peer_config* config; } ;
struct eap_peer_config {int dummy; } ;



__attribute__((used)) static struct eap_peer_config * eapol_sm_get_config(void *ctx)
{
 struct eapol_sm *sm = ctx;
 return sm ? sm->config : ((void*)0);
}
