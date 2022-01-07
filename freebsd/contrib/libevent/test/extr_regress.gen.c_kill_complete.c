
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int action_set; int weapon_set; } ;



int
kill_complete(struct kill *msg)
{
  if (!msg->weapon_set)
    return (-1);
  if (!msg->action_set)
    return (-1);
  return (0);
}
