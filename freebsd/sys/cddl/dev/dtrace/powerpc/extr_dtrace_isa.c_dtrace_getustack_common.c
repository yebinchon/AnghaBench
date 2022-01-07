
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int proc_t ;


 int ASSERT (int) ;
 scalar_t__ RETURN_OFFSET ;
 scalar_t__ RETURN_OFFSET64 ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int *,int ) ;
 int * curproc ;
 uintptr_t dtrace_fuword32 (void*) ;
 uintptr_t dtrace_fuword64 (void*) ;

__attribute__((used)) static int
dtrace_getustack_common(uint64_t *pcstack, int pcstack_limit, uintptr_t pc,
    uintptr_t sp)
{
 proc_t *p = curproc;
 int ret = 0;

 ASSERT(pcstack == ((void*)0) || pcstack_limit > 0);

 while (pc != 0) {
  ret++;
  if (pcstack != ((void*)0)) {
   *pcstack++ = (uint64_t)pc;
   pcstack_limit--;
   if (pcstack_limit <= 0)
    break;
  }

  if (sp == 0)
   break;

  if (SV_PROC_FLAG(p, SV_ILP32)) {
   pc = dtrace_fuword32((void *)(sp + RETURN_OFFSET));
   sp = dtrace_fuword32((void *)sp);
  }
  else {
   pc = dtrace_fuword64((void *)(sp + RETURN_OFFSET64));
   sp = dtrace_fuword64((void *)sp);
  }
 }

 return (ret);
}
