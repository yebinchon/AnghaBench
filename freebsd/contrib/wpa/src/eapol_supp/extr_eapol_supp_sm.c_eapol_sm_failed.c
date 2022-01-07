
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {scalar_t__ eapFail; int eapSuccess; } ;



int eapol_sm_failed(struct eapol_sm *sm)
{
 if (sm == ((void*)0))
  return 0;
 return !sm->eapSuccess && sm->eapFail;
}
