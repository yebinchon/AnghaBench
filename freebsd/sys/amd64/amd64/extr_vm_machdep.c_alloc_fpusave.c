
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xstate_bv; } ;
struct TYPE_3__ {TYPE_2__ sx_hd; } ;
struct savefpu_ymm {TYPE_1__ sv_xstate; } ;


 int M_DEVBUF ;
 int bzero (TYPE_2__*,int) ;
 int cpu_max_ext_state_size ;
 void* malloc (int ,int ,int) ;
 scalar_t__ use_xsave ;
 int xsave_mask ;

void *
alloc_fpusave(int flags)
{
 void *res;
 struct savefpu_ymm *sf;

 res = malloc(cpu_max_ext_state_size, M_DEVBUF, flags);
 if (use_xsave) {
  sf = (struct savefpu_ymm *)res;
  bzero(&sf->sv_xstate.sx_hd, sizeof(sf->sv_xstate.sx_hd));
  sf->sv_xstate.sx_hd.xstate_bv = xsave_mask;
 }
 return (res);
}
