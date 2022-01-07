
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_usb_state_t ;
struct TYPE_3__ {scalar_t__ pid_toggle; } ;
typedef TYPE_1__ cvmx_usb_pipe_t ;
struct TYPE_4__ {TYPE_1__* pipe; } ;
typedef TYPE_2__ cvmx_usb_internal_state_t ;



extern int cvmx_usb_get_toggle(cvmx_usb_state_t *state, int endpoint_num)
{
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;
    cvmx_usb_pipe_t *pipe = usb->pipe + endpoint_num;

    if (pipe->pid_toggle)
     return (1);
    return (0);
}
