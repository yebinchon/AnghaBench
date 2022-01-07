
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int run_length; int * run_data; scalar_t__ run_set; int attack_data; scalar_t__ attack_set; int to_name_set; int from_name_set; } ;


 int kill_complete (int ) ;
 int run_complete (int ) ;

int
msg_complete(struct msg *msg)
{
  if (!msg->from_name_set)
    return (-1);
  if (!msg->to_name_set)
    return (-1);
  if (msg->attack_set && kill_complete(msg->attack_data) == -1)
    return (-1);
  {
    int i;
    for (i = 0; i < msg->run_length; ++i) {
      if (msg->run_set && run_complete(msg->run_data[i]) == -1)
        return (-1);
    }
  }
  return (0);
}
