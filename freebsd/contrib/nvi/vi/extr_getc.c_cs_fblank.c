
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cs_flags; int cs_ch; } ;
typedef TYPE_1__ VCS ;
typedef int SCR ;


 scalar_t__ CS_EMP ;
 scalar_t__ CS_EOL ;
 scalar_t__ ISBLANK (int ) ;
 scalar_t__ cs_next (int *,TYPE_1__*) ;

int
cs_fblank(SCR *sp, VCS *csp)
{
 for (;;) {
  if (cs_next(sp, csp))
   return (1);
  if (csp->cs_flags == CS_EOL || csp->cs_flags == CS_EMP ||
      (csp->cs_flags == 0 && ISBLANK(csp->cs_ch)))
   continue;
  break;
 }
 return (0);
}
