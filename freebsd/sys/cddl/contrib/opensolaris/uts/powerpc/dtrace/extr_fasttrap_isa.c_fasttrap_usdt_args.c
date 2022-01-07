
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct reg {uintptr_t* fixreg; } ;
struct TYPE_3__ {int* ftp_argmap; int ftp_nargs; } ;
typedef TYPE_1__ fasttrap_probe_t ;


 int MIN (int,int ) ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int curproc ;
 uintptr_t fuword32 (void*) ;
 uintptr_t fuword64 (void*) ;

__attribute__((used)) static void
fasttrap_usdt_args(fasttrap_probe_t *probe, struct reg *rp, int argc,
    uintptr_t *argv)
{
 int i, x, cap = MIN(argc, probe->ftp_nargs);

 for (i = 0; i < cap; i++) {
  x = probe->ftp_argmap[i];

  if (x < 8)
   argv[i] = rp->fixreg[x];
  else
   if (SV_PROC_FLAG(curproc, SV_ILP32))
    argv[i] = fuword32((void *)(rp->fixreg[1] + 8 +
        (x * sizeof(uint32_t))));
   else
    argv[i] = fuword64((void *)(rp->fixreg[1] + 48 +
        (x * sizeof(uint64_t))));
 }

 for (; i < argc; i++) {
  argv[i] = 0;
 }
}
