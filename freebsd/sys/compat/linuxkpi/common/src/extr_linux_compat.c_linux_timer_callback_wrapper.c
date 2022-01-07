
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int data; int (* function ) (int ) ;} ;


 int curthread ;
 int linux_set_current (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
linux_timer_callback_wrapper(void *context)
{
 struct timer_list *timer;

 linux_set_current(curthread);

 timer = context;
 timer->function(timer->data);
}
