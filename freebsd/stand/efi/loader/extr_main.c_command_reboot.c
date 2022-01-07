
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* ResetSystem ) (int ,int ,int ,int *) ;} ;
struct TYPE_3__ {int (* dv_cleanup ) () ;} ;


 int CMD_ERROR ;
 int EFI_SUCCESS ;
 int EfiResetCold ;
 TYPE_2__* RS ;
 TYPE_1__** devsw ;
 int stub1 () ;
 int stub2 (int ,int ,int ,int *) ;

__attribute__((used)) static int
command_reboot(int argc, char *argv[])
{
 int i;

 for (i = 0; devsw[i] != ((void*)0); ++i)
  if (devsw[i]->dv_cleanup != ((void*)0))
   (devsw[i]->dv_cleanup)();

 RS->ResetSystem(EfiResetCold, EFI_SUCCESS, 0, ((void*)0));


 return (CMD_ERROR);
}
