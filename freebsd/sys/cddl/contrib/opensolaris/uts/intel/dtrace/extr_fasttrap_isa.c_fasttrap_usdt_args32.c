
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct reg {scalar_t__ r_rsp; } ;
struct TYPE_3__ {int* ftp_argmap; int ftp_nargs; } ;
typedef TYPE_1__ fasttrap_probe_t ;


 int MIN (int,int ) ;
 scalar_t__ fasttrap_fuword32_noerr (scalar_t__*) ;

__attribute__((used)) static void
fasttrap_usdt_args32(fasttrap_probe_t *probe, struct reg *rp, int argc,
    uint32_t *argv)
{
 int i, x, cap = MIN(argc, probe->ftp_nargs);
 uint32_t *stack = (uint32_t *)rp->r_rsp;

 for (i = 0; i < cap; i++) {
  x = probe->ftp_argmap[i];

  argv[i] = fasttrap_fuword32_noerr(&stack[x]);
 }

 for (; i < argc; i++) {
  argv[i] = 0;
 }
}
