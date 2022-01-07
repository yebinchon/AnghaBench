
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ipt_wrap; int * ipt_func; } ;
typedef TYPE_1__ image_patch_table ;


 int NDIS_MAXCPUS ;
 int * disp_lock ;
 TYPE_1__* hal_functbl ;
 int mtx_destroy (int *) ;
 int windrv_unwrap (int ) ;

int
hal_libfini()
{
 image_patch_table *patch;
 int i;

 for (i = 0; i < NDIS_MAXCPUS; i++)
  mtx_destroy(&disp_lock[i]);

 patch = hal_functbl;
 while (patch->ipt_func != ((void*)0)) {
  windrv_unwrap(patch->ipt_wrap);
  patch++;
 }

 return (0);
}
