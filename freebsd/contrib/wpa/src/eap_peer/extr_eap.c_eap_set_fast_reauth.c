
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int fast_reauth; } ;



void eap_set_fast_reauth(struct eap_sm *sm, int enabled)
{
 sm->fast_reauth = enabled;
}
