
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dtrace_vtime_state_t ;






 int dtrace_cas32 (int *,int,int) ;
 int dtrace_vtime_active ;
 int panic (char*) ;

void
dtrace_vtime_enable(void)
{
 dtrace_vtime_state_t state, nstate = 0;

 do {
  state = dtrace_vtime_active;

  switch (state) {
  case 129:
   nstate = 131;
   break;

  case 128:
   nstate = 130;
   break;

  case 131:
  case 130:
   panic("DTrace virtual time already enabled");

  }

 } while (dtrace_cas32((uint32_t *)&dtrace_vtime_active,
     state, nstate) != state);
}
