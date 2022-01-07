
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout {void (* func ) (void*) ;void* what; struct timeout* next; } ;


 struct timeout* free_timeouts ;
 struct timeout* timeouts ;

void
cancel_timeout(void (*where)(void *), void *what)
{
 struct timeout *t, *q;


 t = ((void*)0);
 for (q = timeouts; q; q = q->next) {
  if (q->func == where && q->what == what) {
   if (t)
    t->next = q->next;
   else
    timeouts = q->next;
   break;
  }
  t = q;
 }


 if (q) {
  q->next = free_timeouts;
  free_timeouts = q;
 }
}
