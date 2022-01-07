
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {unsigned int workaround; } ;



void eap_set_workaround(struct eap_sm *sm, unsigned int workaround)
{
 sm->workaround = workaround;
}
