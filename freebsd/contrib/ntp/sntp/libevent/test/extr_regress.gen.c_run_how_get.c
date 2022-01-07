
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int how_set; char* how_data; } ;



int
run_how_get(struct run *msg, char * *value)
{
  if (msg->how_set != 1)
    return (-1);
  *value = msg->how_data;
  return (0);
}
