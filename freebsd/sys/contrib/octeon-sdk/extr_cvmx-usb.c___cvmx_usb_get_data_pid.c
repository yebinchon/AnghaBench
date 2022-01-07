
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pid_toggle; } ;
typedef TYPE_1__ cvmx_usb_pipe_t ;



__attribute__((used)) static inline int __cvmx_usb_get_data_pid(cvmx_usb_pipe_t *pipe)
{
    if (pipe->pid_toggle)
        return 2;
    else
        return 0;
}
