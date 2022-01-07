
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int index; } ;
typedef TYPE_2__ cvmx_usbd_state_t ;
typedef int cvmx_usbd_speed_t ;
struct TYPE_6__ {int enumspd; } ;
struct TYPE_8__ {TYPE_1__ s; int u32; } ;
typedef TYPE_3__ cvmx_usbcx_dsts_t ;


 int CVMX_USBCX_DSTS (int ) ;
 int __cvmx_usbd_read_csr32 (TYPE_2__*,int ) ;

cvmx_usbd_speed_t cvmx_usbd_get_speed(cvmx_usbd_state_t *usb)
{
    cvmx_usbcx_dsts_t usbcx_dsts;
    usbcx_dsts.u32 = __cvmx_usbd_read_csr32(usb, CVMX_USBCX_DSTS(usb->index));
    return usbcx_dsts.s.enumspd;
}
