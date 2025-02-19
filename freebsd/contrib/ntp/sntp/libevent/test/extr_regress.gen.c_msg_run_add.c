
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int dummy; } ;
struct msg {scalar_t__ run_length; scalar_t__ run_num_allocated; int run_set; struct run** run_data; } ;


 scalar_t__ msg_run_expand_to_hold_more (struct msg*) ;
 struct run* run_new () ;

struct run*
msg_run_add(struct msg *msg)
{
  if (++msg->run_length >= msg->run_num_allocated) {
    if (msg_run_expand_to_hold_more(msg)<0)
      goto error;
  }
  msg->run_data[msg->run_length - 1] = run_new();
  if (msg->run_data[msg->run_length - 1] == ((void*)0))
    goto error;
  msg->run_set = 1;
  return (msg->run_data[msg->run_length - 1]);
error:
  --msg->run_length;
  return (((void*)0));
}
