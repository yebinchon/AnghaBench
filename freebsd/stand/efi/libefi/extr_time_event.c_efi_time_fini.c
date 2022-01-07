
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* CloseEvent ) (int ) ;int (* SetTimer ) (int ,int ,int ) ;} ;


 TYPE_1__* BS ;
 int TimerCancel ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ) ;
 int time_event ;

void
efi_time_fini(void)
{


 BS->SetTimer(time_event, TimerCancel, 0);
 BS->CloseEvent(time_event);
}
