
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct reg {uintptr_t r_rdi; scalar_t__ r_rsp; } ;
struct TYPE_3__ {int* ftp_argmap; int ftp_nargs; } ;
typedef TYPE_1__ fasttrap_probe_t ;


 int MIN (int,int ) ;
 uintptr_t fasttrap_fulword_noerr (uintptr_t*) ;

__attribute__((used)) static void
fasttrap_usdt_args64(fasttrap_probe_t *probe, struct reg *rp, int argc,
    uintptr_t *argv)
{
 int i, x, cap = MIN(argc, probe->ftp_nargs);
 uintptr_t *stack = (uintptr_t *)rp->r_rsp;

 for (i = 0; i < cap; i++) {
  x = probe->ftp_argmap[i];

  if (x < 6)
   argv[i] = (&rp->r_rdi)[x];
  else
   argv[i] = fasttrap_fulword_noerr(&stack[x]);
 }

 for (; i < argc; i++) {
  argv[i] = 0;
 }
}
