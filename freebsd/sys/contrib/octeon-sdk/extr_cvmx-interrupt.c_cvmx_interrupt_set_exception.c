
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_interrupt_exception_t ;
struct TYPE_2__ {int exception_handler; } ;


 int CVMX_SYNCWS ;
 TYPE_1__ cvmx_interrupt_state ;

cvmx_interrupt_exception_t cvmx_interrupt_set_exception(cvmx_interrupt_exception_t handler)
{
    cvmx_interrupt_exception_t result = cvmx_interrupt_state.exception_handler;
    cvmx_interrupt_state.exception_handler = handler;
    CVMX_SYNCWS;
    return result;
}
