
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ dtdv_scope; } ;
struct TYPE_5__ {size_t dtsv_size; int dtsv_data; TYPE_1__ dtsv_var; } ;
typedef TYPE_2__ dtrace_statvar_t ;


 scalar_t__ DIFV_SCOPE_GLOBAL ;
 scalar_t__ DIFV_SCOPE_LOCAL ;
 scalar_t__ DTRACE_INRANGE (int ,size_t,int ,size_t) ;
 int DTRACE_RANGE_REMAIN (size_t*,int ,int ,size_t) ;
 size_t NCPU ;
 int VERIFY (int) ;
 int dtrace_statvar_maxsize ;

__attribute__((used)) static int
dtrace_canstore_statvar(uint64_t addr, size_t sz, size_t *remain,
    dtrace_statvar_t **svars, int nsvars)
{
 int i;
 size_t maxglobalsize, maxlocalsize;

 if (nsvars == 0)
  return (0);

 maxglobalsize = dtrace_statvar_maxsize + sizeof (uint64_t);
 maxlocalsize = maxglobalsize * NCPU;

 for (i = 0; i < nsvars; i++) {
  dtrace_statvar_t *svar = svars[i];
  uint8_t scope;
  size_t size;

  if (svar == ((void*)0) || (size = svar->dtsv_size) == 0)
   continue;

  scope = svar->dtsv_var.dtdv_scope;







  VERIFY((scope == DIFV_SCOPE_GLOBAL && size <= maxglobalsize) ||
      (scope == DIFV_SCOPE_LOCAL && size <= maxlocalsize));

  if (DTRACE_INRANGE(addr, sz, svar->dtsv_data,
      svar->dtsv_size)) {
   DTRACE_RANGE_REMAIN(remain, addr, svar->dtsv_data,
       svar->dtsv_size);
   return (1);
  }
 }

 return (0);
}
