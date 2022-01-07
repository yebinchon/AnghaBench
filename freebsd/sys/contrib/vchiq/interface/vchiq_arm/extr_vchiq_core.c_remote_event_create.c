
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; scalar_t__ armed; } ;
typedef TYPE_1__ REMOTE_EVENT_T ;


 int _sema_init (int ,int ) ;

__attribute__((used)) static inline void
remote_event_create(REMOTE_EVENT_T *event)
{
 event->armed = 0;


 _sema_init(event->event, 0);
}
