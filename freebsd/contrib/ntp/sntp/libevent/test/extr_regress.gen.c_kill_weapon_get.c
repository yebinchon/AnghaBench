
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int weapon_set; char* weapon_data; } ;



int
kill_weapon_get(struct kill *msg, char * *value)
{
  if (msg->weapon_set != 1)
    return (-1);
  *value = msg->weapon_data;
  return (0);
}
