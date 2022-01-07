
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int action_set; char* action_data; } ;



int
kill_action_get(struct kill *msg, char * *value)
{
  if (msg->action_set != 1)
    return (-1);
  *value = msg->action_data;
  return (0);
}
