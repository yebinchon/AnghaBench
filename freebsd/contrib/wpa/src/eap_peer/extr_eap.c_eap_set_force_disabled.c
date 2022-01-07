
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int force_disabled; } ;



void eap_set_force_disabled(struct eap_sm *sm, int disabled)
{
 sm->force_disabled = disabled;
}
