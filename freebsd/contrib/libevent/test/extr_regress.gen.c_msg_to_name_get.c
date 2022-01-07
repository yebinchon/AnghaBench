
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int to_name_set; char* to_name_data; } ;



int
msg_to_name_get(struct msg *msg, char * *value)
{
  if (msg->to_name_set != 1)
    return (-1);
  *value = msg->to_name_data;
  return (0);
}
