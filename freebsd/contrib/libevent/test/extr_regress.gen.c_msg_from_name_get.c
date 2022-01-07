
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int from_name_set; char* from_name_data; } ;



int
msg_from_name_get(struct msg *msg, char * *value)
{
  if (msg->from_name_set != 1)
    return (-1);
  *value = msg->from_name_data;
  return (0);
}
