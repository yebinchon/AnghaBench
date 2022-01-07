
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int external_sim; } ;



void eap_set_external_sim(struct eap_sm *sm, int external_sim)
{
 sm->external_sim = external_sim;
}
