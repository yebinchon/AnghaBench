
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int min_heap_idx; } ;
struct event {TYPE_1__ ev_timeout_pos; } ;
struct TYPE_8__ {int * p; } ;
typedef TYPE_2__ min_heap_t ;


 scalar_t__ min_heap_elem_greater (int ,struct event*) ;
 int min_heap_push_ (TYPE_2__*,struct event*) ;
 int min_heap_shift_down_ (TYPE_2__*,int,struct event*) ;
 int min_heap_shift_up_unconditional_ (TYPE_2__*,int,struct event*) ;

int min_heap_adjust_(min_heap_t *s, struct event *e)
{
 if (-1 == e->ev_timeout_pos.min_heap_idx) {
  return min_heap_push_(s, e);
 } else {
  unsigned parent = (e->ev_timeout_pos.min_heap_idx - 1) / 2;


  if (e->ev_timeout_pos.min_heap_idx > 0 && min_heap_elem_greater(s->p[parent], e))
   min_heap_shift_up_unconditional_(s, e->ev_timeout_pos.min_heap_idx, e);
  else
   min_heap_shift_down_(s, e->ev_timeout_pos.min_heap_idx, e);
  return 0;
 }
}
