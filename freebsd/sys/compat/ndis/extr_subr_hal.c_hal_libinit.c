
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ipt_ftype; int ipt_argcnt; int ipt_wrap; int * ipt_func; } ;
typedef TYPE_1__ image_patch_table ;
typedef int funcptr ;


 int MTX_DEF ;
 int MTX_RECURSE ;
 int NDIS_MAXCPUS ;
 int * disp_lock ;
 TYPE_1__* hal_functbl ;
 int mtx_init (int *,char*,char*,int) ;
 int windrv_wrap (int ,int *,int ,int ) ;

int
hal_libinit()
{
 image_patch_table *patch;
 int i;

 for (i = 0; i < NDIS_MAXCPUS; i++)
  mtx_init(&disp_lock[i], "HAL preemption lock",
      "HAL lock", MTX_RECURSE|MTX_DEF);

 patch = hal_functbl;
 while (patch->ipt_func != ((void*)0)) {
  windrv_wrap((funcptr)patch->ipt_func,
      (funcptr *)&patch->ipt_wrap,
      patch->ipt_argcnt, patch->ipt_ftype);
  patch++;
 }

 return (0);
}
