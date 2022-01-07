
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t dtms_scratch_base; uintptr_t dtms_scratch_ptr; } ;
typedef TYPE_1__ dtrace_mstate_t ;



__attribute__((used)) static int
dtrace_inscratch(uintptr_t dest, size_t size, dtrace_mstate_t *mstate)
{
 if (dest < mstate->dtms_scratch_base)
  return (0);

 if (dest + size < dest)
  return (0);

 if (dest + size > mstate->dtms_scratch_ptr)
  return (0);

 return (1);
}
