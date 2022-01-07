
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cvmx_usb_status_t ;
typedef int cvmx_usb_state_t ;
struct TYPE_5__ {int flags; int head; } ;
typedef TYPE_1__ cvmx_usb_pipe_t ;
struct TYPE_6__ {int free_pipes; int idle_pipes; TYPE_1__* pipe; } ;
typedef TYPE_2__ cvmx_usb_internal_state_t ;


 int CVMX_USB_BUSY ;
 int CVMX_USB_INVALID_PARAM ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,int) ;
 int CVMX_USB_RETURN (int ) ;
 int CVMX_USB_SUCCESS ;
 int MAX_PIPES ;
 int __CVMX_USB_PIPE_FLAGS_OPEN ;
 int __cvmx_usb_append_pipe (int *,TYPE_1__*) ;
 int __cvmx_usb_remove_pipe (int *,TYPE_1__*) ;
 scalar_t__ cvmx_unlikely (int) ;

cvmx_usb_status_t cvmx_usb_close_pipe(cvmx_usb_state_t *state, int pipe_handle)
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


    if (cvmx_unlikely(pipe->head))
        CVMX_USB_RETURN(CVMX_USB_BUSY);

    pipe->flags = 0;
    __cvmx_usb_remove_pipe(&usb->idle_pipes, pipe);
    __cvmx_usb_append_pipe(&usb->free_pipes, pipe);

    CVMX_USB_RETURN(CVMX_USB_SUCCESS);
}
