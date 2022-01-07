
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ dtrace_id_t ;
typedef int dtrace_icookie_t ;
struct TYPE_2__ {int t_dtrace_inprobe; } ;


 int ASSERT (int) ;
 TYPE_1__* curthread ;
 int dtrace_interrupt_disable () ;
 scalar_t__ dtrace_probeid_error ;

__attribute__((used)) static dtrace_icookie_t
dtrace_probe_enter(dtrace_id_t id)
{
 dtrace_icookie_t cookie;

 cookie = dtrace_interrupt_disable();
 ASSERT(curthread->t_dtrace_inprobe == 0 ||
     id == dtrace_probeid_error);
 curthread->t_dtrace_inprobe = 1;

 return (cookie);
}
