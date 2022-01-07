
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_usb_state_t ;
typedef int cvmx_usb_port_status_t ;
struct TYPE_2__ {int port_status; } ;
typedef TYPE_1__ cvmx_usb_internal_state_t ;


 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,int *) ;
 int CVMX_USB_RETURN_NOTHING () ;

void cvmx_usb_set_status(cvmx_usb_state_t *state, cvmx_usb_port_status_t port_status)
{
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;
    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", state);
    usb->port_status = port_status;
    CVMX_USB_RETURN_NOTHING();
}
