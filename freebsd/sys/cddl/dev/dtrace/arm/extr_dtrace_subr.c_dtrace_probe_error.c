
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dtrace_state_t ;
typedef scalar_t__ dtrace_epid_t ;


 int dtrace_probe (int ,int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 int dtrace_probeid_error ;

void
dtrace_probe_error(dtrace_state_t *state, dtrace_epid_t epid, int which,
    int fault, int fltoffs, uintptr_t illval)
{

 dtrace_probe(dtrace_probeid_error, (uint64_t)(uintptr_t)state,
     (uintptr_t)epid,
     (uintptr_t)which, (uintptr_t)fault, (uintptr_t)fltoffs);
}
