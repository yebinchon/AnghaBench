
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_3__ {int ipt_wrap; int * ipt_func; int ipt_ftype; int ipt_argcnt; } ;
typedef TYPE_1__ image_patch_table ;
typedef int funcptr ;


 int EINVAL ;



 int * TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int hal_libfini () ;
 int hal_libinit () ;
 TYPE_1__* kernndis_functbl ;
 int ndis_devhead ;
 int ndis_libfini () ;
 int ndis_libinit () ;
 int ntoskrnl_libfini () ;
 int ntoskrnl_libinit () ;
 int usbd_libfini () ;
 int usbd_libinit () ;
 int windrv_libfini () ;
 int windrv_libinit () ;
 int windrv_unwrap (int ) ;
 int windrv_wrap (int ,int *,int ,int ) ;

__attribute__((used)) static int
ndis_modevent(module_t mod, int cmd, void *arg)
{
 int error = 0;
 image_patch_table *patch;

 switch (cmd) {
 case 130:

  hal_libinit();
  ntoskrnl_libinit();
  windrv_libinit();
  ndis_libinit();
  usbd_libinit();

  patch = kernndis_functbl;
  while (patch->ipt_func != ((void*)0)) {
   windrv_wrap((funcptr)patch->ipt_func,
       (funcptr *)&patch->ipt_wrap,
       patch->ipt_argcnt, patch->ipt_ftype);
   patch++;
  }

  TAILQ_INIT(&ndis_devhead);
  break;
 case 129:
  if (TAILQ_FIRST(&ndis_devhead) == ((void*)0)) {

   ndis_libfini();
   usbd_libfini();
   windrv_libfini();
   ntoskrnl_libfini();
   hal_libfini();

   patch = kernndis_functbl;
   while (patch->ipt_func != ((void*)0)) {
    windrv_unwrap(patch->ipt_wrap);
    patch++;
   }
  }
  break;
 case 128:

  ndis_libfini();
  usbd_libfini();
  windrv_libfini();
  ntoskrnl_libfini();
  hal_libfini();

  patch = kernndis_functbl;
  while (patch->ipt_func != ((void*)0)) {
   windrv_unwrap(patch->ipt_wrap);
   patch++;
  }

  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
