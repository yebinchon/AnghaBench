
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ipt_ftype; int ipt_argcnt; int ipt_wrap; int * ipt_func; } ;
typedef TYPE_1__ image_patch_table ;
typedef int funcptr ;


 int ndis_filepath ;
 TYPE_1__* ndis_functbl ;
 int strcpy (int ,char*) ;
 int windrv_wrap (int ,int *,int ,int ) ;

int
ndis_libinit()
{
 image_patch_table *patch;

 strcpy(ndis_filepath, "/compat/ndis");

 patch = ndis_functbl;
 while (patch->ipt_func != ((void*)0)) {
  windrv_wrap((funcptr)patch->ipt_func,
      (funcptr *)&patch->ipt_wrap,
      patch->ipt_argcnt, patch->ipt_ftype);
  patch++;
 }

 return (0);
}
