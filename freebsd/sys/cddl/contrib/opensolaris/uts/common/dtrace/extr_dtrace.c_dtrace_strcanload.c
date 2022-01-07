
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dtrace_vstate_t ;
struct TYPE_4__ {int dtms_access; } ;
typedef TYPE_1__ dtrace_mstate_t ;


 int DTRACE_ACCESS_KERNEL ;
 int DTRACE_RANGE_REMAIN (size_t*,scalar_t__,scalar_t__,size_t) ;
 int MIN (size_t,size_t) ;
 scalar_t__ dtrace_canload_remains (scalar_t__,int ,size_t*,TYPE_1__*,int *) ;
 int dtrace_strlen (char*,int ) ;

__attribute__((used)) static int
dtrace_strcanload(uint64_t addr, size_t sz, size_t *remain,
    dtrace_mstate_t *mstate, dtrace_vstate_t *vstate)
{
 size_t rsize;





 if ((mstate->dtms_access & DTRACE_ACCESS_KERNEL) != 0) {
  DTRACE_RANGE_REMAIN(remain, addr, addr, sz);
  return (1);
 }





 if (remain == ((void*)0)) {
  remain = &rsize;
 }
 if (dtrace_canload_remains(addr, 0, remain, mstate, vstate)) {
  size_t strsz;






  strsz = 1 + dtrace_strlen((char *)(uintptr_t)addr,
      MIN(sz, *remain));
  if (strsz <= *remain) {
   return (1);
  }
 }

 return (0);
}
