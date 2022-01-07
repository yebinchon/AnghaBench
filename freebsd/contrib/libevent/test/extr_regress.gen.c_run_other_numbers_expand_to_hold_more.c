
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int other_numbers_num_allocated; int * other_numbers_data; } ;
typedef int ev_uint32_t ;


 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static int
run_other_numbers_expand_to_hold_more(struct run *msg)
{
  int tobe_allocated = msg->other_numbers_num_allocated;
  ev_uint32_t* new_data = ((void*)0);
  tobe_allocated = !tobe_allocated ? 1 : tobe_allocated << 1;
  new_data = (ev_uint32_t*) realloc(msg->other_numbers_data,
      tobe_allocated * sizeof(ev_uint32_t));
  if (new_data == ((void*)0))
    return -1;
  msg->other_numbers_data = new_data;
  msg->other_numbers_num_allocated = tobe_allocated;
  return 0;}
