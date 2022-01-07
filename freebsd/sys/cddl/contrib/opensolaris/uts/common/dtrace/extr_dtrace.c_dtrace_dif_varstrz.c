
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_state_t ;
struct TYPE_3__ {size_t dtms_scratch_ptr; size_t dtms_scratch_base; size_t dtms_scratch_size; } ;
typedef TYPE_1__ dtrace_mstate_t ;


 int CPU_DTRACE_NOSCRATCH ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int dtrace_bcopy (void const*,void*,size_t) ;

__attribute__((used)) static uintptr_t
dtrace_dif_varstrz(uintptr_t addr, size_t strsz, dtrace_state_t *state,
    dtrace_mstate_t *mstate)
{
 char *p;
 size_t i;
 uintptr_t ret;

 if (mstate->dtms_scratch_ptr + strsz >
     mstate->dtms_scratch_base + mstate->dtms_scratch_size) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOSCRATCH);
  return (0);
 }

 dtrace_bcopy((const void *)addr, (void *)mstate->dtms_scratch_ptr,
     strsz);


 for (p = (char *) mstate->dtms_scratch_ptr, i = 0; i < strsz - 1;
     p++, i++)
  if (*p == '\0')
   *p = ' ';

 ret = mstate->dtms_scratch_ptr;
 mstate->dtms_scratch_ptr += strsz;
 return (ret);
}
