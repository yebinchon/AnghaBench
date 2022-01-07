
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int frnum; } ;
struct TYPE_6__ {TYPE_1__ s; int u32; } ;
typedef TYPE_2__ cvmx_usbcx_hfnum_t ;
typedef int cvmx_usb_state_t ;
struct TYPE_7__ {int index; } ;
typedef TYPE_3__ cvmx_usb_internal_state_t ;


 int CVMX_USBCX_HFNUM (int ) ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,int *) ;
 int CVMX_USB_RETURN (int) ;
 int __cvmx_usb_read_csr32 (TYPE_3__*,int ) ;

int cvmx_usb_get_frame_number(cvmx_usb_state_t *state)
{
    int frame_number;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;
    cvmx_usbcx_hfnum_t usbc_hfnum;

    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", state);

    usbc_hfnum.u32 = __cvmx_usb_read_csr32(usb, CVMX_USBCX_HFNUM(usb->index));
    frame_number = usbc_hfnum.s.frnum;

    CVMX_USB_RETURN(frame_number);
}
