
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {void (* function ) (unsigned long) ;unsigned long data; } ;


 int init_timer (struct timer_list*) ;

void
setup_timer(struct timer_list *t, void (*function)(unsigned long), unsigned long data)
{
 t->function = function;
 t->data = data;
 init_timer(t);
}
