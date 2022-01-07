
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int * dts_options; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_6__ {int dtms_access; size_t dtms_scratch_ptr; size_t dtms_scratch_base; size_t dtms_scratch_size; } ;
typedef TYPE_2__ dtrace_mstate_t ;


 int CPU_DTRACE_NOSCRATCH ;
 size_t DTRACEOPT_STRSIZE ;
 int DTRACE_ACCESS_KERNEL ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int dtrace_strcpy (void const*,void*,size_t) ;
 int dtrace_strlen (char*,int ) ;

uintptr_t
dtrace_dif_varstr(uintptr_t addr, dtrace_state_t *state,
    dtrace_mstate_t *mstate)
{
 uint64_t size = state->dts_options[DTRACEOPT_STRSIZE];
 uintptr_t ret;
 size_t strsz;





 if ((mstate->dtms_access & DTRACE_ACCESS_KERNEL) != 0)
  return (addr);







 strsz = dtrace_strlen((char *)addr, size) + 1;

 if (mstate->dtms_scratch_ptr + strsz >
     mstate->dtms_scratch_base + mstate->dtms_scratch_size) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOSCRATCH);
  return (0);
 }

 dtrace_strcpy((const void *)addr, (void *)mstate->dtms_scratch_ptr,
     strsz);
 ret = mstate->dtms_scratch_ptr;
 mstate->dtms_scratch_ptr += strsz;
 return (ret);
}
