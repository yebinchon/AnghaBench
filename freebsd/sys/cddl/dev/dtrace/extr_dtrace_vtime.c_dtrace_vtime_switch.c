
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ t_dtrace_start; } ;
typedef TYPE_1__ kthread_t ;
typedef scalar_t__ hrtime_t ;
typedef int dtrace_icookie_t ;
struct TYPE_5__ {scalar_t__ t_dtrace_start; int t_dtrace_vtime; } ;


 TYPE_3__* curthread ;
 scalar_t__ dtrace_gethrtime () ;
 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;

void
dtrace_vtime_switch(kthread_t *next)
{
 dtrace_icookie_t cookie;
 hrtime_t ts;

 cookie = dtrace_interrupt_disable();
 ts = dtrace_gethrtime();

 if (curthread->t_dtrace_start != 0) {
  curthread->t_dtrace_vtime += ts - curthread->t_dtrace_start;
  curthread->t_dtrace_start = 0;
 }

 if (next != ((void*)0))
  next->t_dtrace_start = ts;

 dtrace_interrupt_enable(cookie);
}
