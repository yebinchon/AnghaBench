
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cs_flags; int cs_ch; } ;
typedef TYPE_1__ VCS ;
typedef int SCR ;


 int ISBLANK (int ) ;
 scalar_t__ cs_next (int *,TYPE_1__*) ;

int
cs_fspace(SCR *sp, VCS *csp)
{
 if (csp->cs_flags != 0 || !ISBLANK(csp->cs_ch))
  return (0);
 for (;;) {
  if (cs_next(sp, csp))
   return (1);
  if (csp->cs_flags != 0 || !ISBLANK(csp->cs_ch))
   break;
 }
 return (0);
}
