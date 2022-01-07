
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_icookie_t ;
struct TYPE_2__ {scalar_t__ t_dtrace_inprobe; } ;


 TYPE_1__* curthread ;
 int dtrace_interrupt_enable (int ) ;

__attribute__((used)) static void
dtrace_probe_exit(dtrace_icookie_t cookie)
{

 curthread->t_dtrace_inprobe = 0;
 dtrace_interrupt_enable(cookie);
}
