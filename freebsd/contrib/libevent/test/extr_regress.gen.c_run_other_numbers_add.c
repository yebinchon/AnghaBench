
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {scalar_t__ other_numbers_length; scalar_t__ other_numbers_num_allocated; int other_numbers_set; int * other_numbers_data; } ;
typedef int ev_uint32_t ;


 scalar_t__ run_other_numbers_expand_to_hold_more (struct run*) ;

ev_uint32_t *
run_other_numbers_add(struct run *msg, const ev_uint32_t value)
{
  if (++msg->other_numbers_length >= msg->other_numbers_num_allocated) {
    if (run_other_numbers_expand_to_hold_more(msg)<0)
      goto error;
  }
  msg->other_numbers_data[msg->other_numbers_length - 1] = value;
  msg->other_numbers_set = 1;
  return &(msg->other_numbers_data[msg->other_numbers_length - 1]);
error:
  --msg->other_numbers_length;
  return (((void*)0));
}
