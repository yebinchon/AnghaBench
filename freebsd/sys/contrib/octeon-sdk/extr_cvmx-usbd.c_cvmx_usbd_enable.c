
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int index; } ;
typedef TYPE_2__ cvmx_usbd_state_t ;
struct TYPE_7__ {int cgoutnak; scalar_t__ sftdiscon; } ;
struct TYPE_9__ {int u32; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_usbcx_dctl_t ;


 int CVMX_USBCX_DCTL (int ) ;
 int __cvmx_usbd_read_csr32 (TYPE_2__*,int ) ;
 int __cvmx_usbd_write_csr32 (TYPE_2__*,int ,int ) ;

int cvmx_usbd_enable(cvmx_usbd_state_t *usb)
{
    cvmx_usbcx_dctl_t usbcx_dctl;
    usbcx_dctl.u32 = __cvmx_usbd_read_csr32(usb, CVMX_USBCX_DCTL(usb->index));
    usbcx_dctl.s.cgoutnak = 1;
    usbcx_dctl.s.sftdiscon = 0;
    __cvmx_usbd_write_csr32(usb, CVMX_USBCX_DCTL(usb->index), usbcx_dctl.u32);
    return 0;
}
