
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ipt_wrap; int * ipt_func; } ;
typedef TYPE_2__ image_patch_table ;
struct TYPE_5__ {int us_buf; } ;
struct TYPE_7__ {TYPE_1__ dro_drivername; } ;


 int M_DEVBUF ;
 int free (int ,int ) ;
 TYPE_4__ usbd_driver ;
 TYPE_2__* usbd_functbl ;
 int usbd_iodispatch_wrap ;
 int usbd_ioinvalid_wrap ;
 int usbd_irpcancel_wrap ;
 int usbd_pnp_wrap ;
 int usbd_power_wrap ;
 int usbd_task_wrap ;
 int usbd_xfertask_wrap ;
 int windrv_unwrap (int ) ;

int
usbd_libfini(void)
{
 image_patch_table *patch;

 patch = usbd_functbl;
 while (patch->ipt_func != ((void*)0)) {
  windrv_unwrap(patch->ipt_wrap);
  patch++;
 }

 windrv_unwrap(usbd_ioinvalid_wrap);
 windrv_unwrap(usbd_iodispatch_wrap);
 windrv_unwrap(usbd_pnp_wrap);
 windrv_unwrap(usbd_power_wrap);
 windrv_unwrap(usbd_irpcancel_wrap);
 windrv_unwrap(usbd_task_wrap);
 windrv_unwrap(usbd_xfertask_wrap);

 free(usbd_driver.dro_drivername.us_buf, M_DEVBUF);

 return (0);
}
