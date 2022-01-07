
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int index; } ;
typedef TYPE_2__ cvmx_usbd_state_t ;
struct TYPE_6__ {int devaddr; } ;
struct TYPE_8__ {TYPE_1__ s; int u32; } ;
typedef TYPE_3__ cvmx_usbcx_dcfg_t ;


 int CVMX_USBCX_DCFG (int ) ;
 int __cvmx_usbd_read_csr32 (TYPE_2__*,int ) ;

int cvmx_usbd_get_address(cvmx_usbd_state_t *usb)
{
    cvmx_usbcx_dcfg_t usbc_dcfg;
    usbc_dcfg.u32 = __cvmx_usbd_read_csr32(usb, CVMX_USBCX_DCFG(usb->index));
    return usbc_dcfg.s.devaddr;
}
