
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ device_speed; } ;
typedef TYPE_3__ cvmx_usb_pipe_t ;
struct TYPE_7__ {scalar_t__ prtspd; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_10__ {TYPE_2__ usbcx_hprt; } ;
typedef TYPE_4__ cvmx_usb_internal_state_t ;


 scalar_t__ CVMX_USB_SPEED_HIGH ;

__attribute__((used)) static inline int __cvmx_usb_pipe_needs_split(cvmx_usb_internal_state_t *usb, cvmx_usb_pipe_t *pipe)
{
    return ((pipe->device_speed != CVMX_USB_SPEED_HIGH) && (usb->usbcx_hprt.s.prtspd == CVMX_USB_SPEED_HIGH));
}
