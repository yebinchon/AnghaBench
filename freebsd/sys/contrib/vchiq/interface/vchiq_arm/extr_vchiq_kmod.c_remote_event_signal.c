
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fired; scalar_t__ armed; } ;
typedef TYPE_1__ REMOTE_EVENT_T ;


 int dsb () ;
 int vchiq_write_4 (int,int ) ;

void
remote_event_signal(REMOTE_EVENT_T *event)
{
 event->fired = 1;



 if (event->armed) {

  dsb();
  vchiq_write_4(0x48, 0);
 }
}
