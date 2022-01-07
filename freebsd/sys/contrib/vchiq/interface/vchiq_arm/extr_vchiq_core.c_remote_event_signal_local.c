
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; scalar_t__ armed; } ;
typedef TYPE_1__ REMOTE_EVENT_T ;


 int up (int ) ;

__attribute__((used)) static inline void
remote_event_signal_local(REMOTE_EVENT_T *event)
{
 event->armed = 0;
 up(event->event);
}
