
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int index; } ;
typedef TYPE_2__ cvmx_usbd_state_t ;
struct TYPE_7__ {int devaddr; } ;
struct TYPE_9__ {int u32; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_usbcx_dcfg_t ;


 int CVMX_USBCX_DCFG (int ) ;
 int __cvmx_usbd_read_csr32 (TYPE_2__*,int ) ;
 int __cvmx_usbd_write_csr32 (TYPE_2__*,int ,int ) ;

void cvmx_usbd_set_address(cvmx_usbd_state_t *usb, int address)
{
    cvmx_usbcx_dcfg_t usbc_dcfg;
    usbc_dcfg.u32 = __cvmx_usbd_read_csr32(usb, CVMX_USBCX_DCFG(usb->index));
    usbc_dcfg.s.devaddr = address;
    __cvmx_usbd_write_csr32(usb, CVMX_USBCX_DCFG(usb->index), usbc_dcfg.u32);
}
