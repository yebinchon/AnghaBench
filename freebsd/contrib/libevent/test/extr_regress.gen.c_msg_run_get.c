
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int dummy; } ;
struct msg {int run_length; struct run** run_data; int run_set; } ;



int
msg_run_get(struct msg *msg, int offset,
    struct run* *value)
{
  if (!msg->run_set || offset < 0 || offset >= msg->run_length)
    return (-1);
  *value = msg->run_data[offset];
  return (0);
}
