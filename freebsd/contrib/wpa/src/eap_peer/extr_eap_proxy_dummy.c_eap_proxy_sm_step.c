
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_proxy_sm {int dummy; } ;



int eap_proxy_sm_step(struct eap_proxy_sm *sm, struct eap_sm *eap_sm)
{
 return 0;
}
