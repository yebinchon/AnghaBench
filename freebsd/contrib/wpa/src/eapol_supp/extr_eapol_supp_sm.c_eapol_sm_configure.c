
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int heldPeriod; int authPeriod; int startPeriod; int maxStart; } ;



void eapol_sm_configure(struct eapol_sm *sm, int heldPeriod, int authPeriod,
   int startPeriod, int maxStart)
{
 if (sm == ((void*)0))
  return;
 if (heldPeriod >= 0)
  sm->heldPeriod = heldPeriod;
 if (authPeriod >= 0)
  sm->authPeriod = authPeriod;
 if (startPeriod >= 0)
  sm->startPeriod = startPeriod;
 if (maxStart >= 0)
  sm->maxStart = maxStart;
}
