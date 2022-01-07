
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_usb_pipe_t ;
struct TYPE_3__ {scalar_t__ pipe; } ;
typedef TYPE_1__ cvmx_usb_internal_state_t ;



__attribute__((used)) static inline int __cvmx_usb_get_pipe_handle(cvmx_usb_internal_state_t *usb,
                                        cvmx_usb_pipe_t *pipe)
{
    return ((unsigned long)pipe - (unsigned long)usb->pipe) / sizeof(*pipe);
}
