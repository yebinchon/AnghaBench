
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ changed; } ;


 int EAP ;
 scalar_t__ FALSE ;
 int SM_STEP_RUN (int ) ;

int eap_server_sm_step(struct eap_sm *sm)
{
 int res = 0;
 do {
  sm->changed = FALSE;
  SM_STEP_RUN(EAP);
  if (sm->changed)
   res = 1;
 } while (sm->changed);
 return res;
}
