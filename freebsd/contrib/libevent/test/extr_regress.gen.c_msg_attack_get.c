
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int attack_set; struct kill* attack_data; } ;
struct kill {int dummy; } ;


 struct kill* kill_new () ;

int
msg_attack_get(struct msg *msg, struct kill* *value)
{
  if (msg->attack_set != 1) {
    msg->attack_data = kill_new();
    if (msg->attack_data == ((void*)0))
      return (-1);
    msg->attack_set = 1;
  }
  *value = msg->attack_data;
  return (0);
}
