
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_usb_status_t ;
typedef int cvmx_usb_state_t ;
struct TYPE_2__ {int index; } ;
typedef TYPE_1__ cvmx_usb_internal_state_t ;


 int CVMX_USBCX_HPRT (int ) ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,int *) ;
 int CVMX_USB_RETURN (int ) ;
 int CVMX_USB_SUCCESS ;
 int USB_SET_FIELD32 (int ,int ,int ,int) ;
 int cvmx_usbcx_hprt_t ;
 int prtena ;

cvmx_usb_status_t cvmx_usb_disable(cvmx_usb_state_t *state)
{
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;

    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", state);


    USB_SET_FIELD32(CVMX_USBCX_HPRT(usb->index), cvmx_usbcx_hprt_t, prtena, 1);
    CVMX_USB_RETURN(CVMX_USB_SUCCESS);
}
