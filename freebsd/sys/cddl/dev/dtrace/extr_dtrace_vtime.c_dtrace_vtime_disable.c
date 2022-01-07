
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
dtrace_vtime_disable(void)
{
 dtrace_vtime_state_t state, nstate = 0;

 do {
  state = dtrace_vtime_active;

  switch (state) {
  case 131:
   nstate = 129;
   break;

  case 130:
   nstate = 128;
   break;

  case 129:
  case 128:
   panic("DTrace virtual time already disabled");

  }

 } while (dtrace_cas32((uint32_t *)&dtrace_vtime_active,
     state, nstate) != state);
}
