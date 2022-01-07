
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int eapKeyAvailable; } ;



int eap_key_available(struct eap_sm *sm)
{
 return sm ? sm->eapKeyAvailable : 0;
}
