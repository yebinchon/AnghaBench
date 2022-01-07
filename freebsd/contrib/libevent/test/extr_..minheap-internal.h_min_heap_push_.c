
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct event {int dummy; } ;
struct TYPE_5__ {scalar_t__ n; } ;
typedef TYPE_1__ min_heap_t ;


 scalar_t__ min_heap_reserve_ (TYPE_1__*,scalar_t__) ;
 int min_heap_shift_up_ (TYPE_1__*,int ,struct event*) ;

int min_heap_push_(min_heap_t* s, struct event* e)
{
 if (min_heap_reserve_(s, s->n + 1))
  return -1;
 min_heap_shift_up_(s, s->n++, e);
 return 0;
}
