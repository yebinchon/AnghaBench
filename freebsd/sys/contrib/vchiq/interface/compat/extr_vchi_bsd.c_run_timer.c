
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {void (* function ) (unsigned long) ;unsigned long data; int mtx; int callout; } ;


 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 scalar_t__ callout_pending (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
run_timer(void *arg)
{
 struct timer_list *t = (struct timer_list *) arg;
 void (*function)(unsigned long);

 mtx_lock_spin(&t->mtx);
 if (callout_pending(&t->callout)) {

  mtx_unlock_spin(&t->mtx);
  return;
 }
 if (!callout_active(&t->callout)) {

  mtx_unlock_spin(&t->mtx);
  return;
 }
 callout_deactivate(&t->callout);

 function = t->function;
 mtx_unlock_spin(&t->mtx);

 function(t->data);
}
