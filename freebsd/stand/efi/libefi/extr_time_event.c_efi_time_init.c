
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* SetTimer ) (int ,int ,int) ;int (* CreateEvent ) (int,int ,int ,int ,int *) ;} ;


 TYPE_1__* BS ;
 int EVT_NOTIFY_SIGNAL ;
 int EVT_TIMER ;
 int TPL_CALLBACK ;
 int TimerPeriodic ;
 int stub1 (int,int ,int ,int ,int *) ;
 int stub2 (int ,int ,int) ;
 int time_event ;
 int time_update ;

void
efi_time_init(void)
{


 BS->CreateEvent(EVT_TIMER | EVT_NOTIFY_SIGNAL, TPL_CALLBACK,
     time_update, 0, &time_event);

 BS->SetTimer(time_event, TimerPeriodic, 100000);
}
