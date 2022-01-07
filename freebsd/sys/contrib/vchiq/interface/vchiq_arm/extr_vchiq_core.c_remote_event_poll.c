
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ armed; scalar_t__ fired; } ;
typedef TYPE_1__ REMOTE_EVENT_T ;


 int remote_event_signal_local (TYPE_1__*) ;

__attribute__((used)) static inline void
remote_event_poll(REMOTE_EVENT_T *event)
{
 if (event->fired && event->armed)
  remote_event_signal_local(event);
}
