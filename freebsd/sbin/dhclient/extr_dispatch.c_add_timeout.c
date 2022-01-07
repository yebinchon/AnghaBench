
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeout {void (* func ) (void*) ;void* what; scalar_t__ when; struct timeout* next; } ;


 int error (char*) ;
 struct timeout* free_timeouts ;
 struct timeout* malloc (int) ;
 struct timeout* timeouts ;

void
add_timeout(time_t when, void (*where)(void *), void *what)
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



 if (!q) {
  if (free_timeouts) {
   q = free_timeouts;
   free_timeouts = q->next;
   q->func = where;
   q->what = what;
  } else {
   q = malloc(sizeof(struct timeout));
   if (!q)
    error("Can't allocate timeout structure!");
   q->func = where;
   q->what = what;
  }
 }

 q->when = when;




 if (!timeouts || timeouts->when > q->when) {
  q->next = timeouts;
  timeouts = q;
  return;
 }


 for (t = timeouts; t->next; t = t->next) {
  if (t->next->when > q->when) {
   q->next = t->next;
   t->next = q;
   return;
  }
 }


 t->next = q;
 q->next = ((void*)0);
}
