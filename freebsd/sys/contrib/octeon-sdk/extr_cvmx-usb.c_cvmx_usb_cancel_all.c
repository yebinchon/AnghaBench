
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ cvmx_usb_status_t ;
typedef int cvmx_usb_state_t ;
struct TYPE_4__ {int flags; scalar_t__ head; } ;
typedef TYPE_1__ cvmx_usb_pipe_t ;
struct TYPE_5__ {TYPE_1__* pipe; } ;
typedef TYPE_2__ cvmx_usb_internal_state_t ;


 scalar_t__ CVMX_USB_INVALID_PARAM ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,int) ;
 int CVMX_USB_RETURN (scalar_t__) ;
 scalar_t__ CVMX_USB_SUCCESS ;
 int MAX_PIPES ;
 int __CVMX_USB_PIPE_FLAGS_OPEN ;
 int __cvmx_usb_get_submit_handle (TYPE_2__*,scalar_t__) ;
 scalar_t__ cvmx_unlikely (int) ;
 scalar_t__ cvmx_usb_cancel (int *,int,int ) ;

cvmx_usb_status_t cvmx_usb_cancel_all(cvmx_usb_state_t *state, int pipe_handle)
{
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;
    cvmx_usb_pipe_t *pipe = usb->pipe + pipe_handle;

    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", state);
    CVMX_USB_LOG_PARAM("%d", pipe_handle);
    if (cvmx_unlikely((pipe_handle < 0) || (pipe_handle >= MAX_PIPES)))
        CVMX_USB_RETURN(CVMX_USB_INVALID_PARAM);


    if (cvmx_unlikely((pipe->flags & __CVMX_USB_PIPE_FLAGS_OPEN) == 0))
        CVMX_USB_RETURN(CVMX_USB_INVALID_PARAM);


    while (pipe->head)
    {
        cvmx_usb_status_t result = cvmx_usb_cancel(state, pipe_handle,
            __cvmx_usb_get_submit_handle(usb, pipe->head));
        if (cvmx_unlikely(result != CVMX_USB_SUCCESS))
            CVMX_USB_RETURN(result);
    }
    CVMX_USB_RETURN(CVMX_USB_SUCCESS);
}
