
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int index; } ;
typedef TYPE_2__ cvmx_usbd_state_t ;
typedef int cvmx_usbd_speed_t ;
struct TYPE_7__ {int devspd; } ;
struct TYPE_9__ {int u32; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_usbcx_dcfg_t ;


 int CVMX_USBCX_DCFG (int ) ;
 int __cvmx_usbd_read_csr32 (TYPE_2__*,int ) ;
 int __cvmx_usbd_write_csr32 (TYPE_2__*,int ,int ) ;

void cvmx_usbd_set_speed(cvmx_usbd_state_t *usb, cvmx_usbd_speed_t speed)
{
    cvmx_usbcx_dcfg_t usbcx_dcfg;
    usbcx_dcfg.u32 = __cvmx_usbd_read_csr32(usb, CVMX_USBCX_DCFG(usb->index));
    usbcx_dcfg.s.devspd = speed;
    __cvmx_usbd_write_csr32(usb, CVMX_USBCX_DCFG(usb->index), usbcx_dcfg.u32);
}
