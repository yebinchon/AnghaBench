
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int how_often_length; int * how_often_data; int how_often_set; } ;
typedef int ev_uint32_t ;



int
kill_how_often_get(struct kill *msg, int offset,
    ev_uint32_t *value)
{
  if (!msg->how_often_set || offset < 0 || offset >= msg->how_often_length)
    return (-1);
  *value = msg->how_often_data[offset];
  return (0);
}
