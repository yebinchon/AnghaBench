
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int armed; scalar_t__ fired; int event; } ;
typedef TYPE_1__ REMOTE_EVENT_T ;


 scalar_t__ down_interruptible (int ) ;
 int dsb () ;
 int wmb () ;

__attribute__((used)) static inline int
remote_event_wait(REMOTE_EVENT_T *event)
{
 if (!event->fired) {
  event->armed = 1;
  dsb();
  if (!event->fired) {
   if (down_interruptible(event->event) != 0) {
    event->armed = 0;
    return 0;
   }
  }
  event->armed = 0;
  wmb();
 }

 event->fired = 0;
 return 1;
}
