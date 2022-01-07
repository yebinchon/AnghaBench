
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int some_bytes_set; int some_bytes_length; int * some_bytes_data; } ;
typedef int ev_uint8_t ;
typedef int ev_uint32_t ;



int
run_some_bytes_get(struct run *msg, ev_uint8_t * *value, ev_uint32_t *plen)
{
  if (msg->some_bytes_set != 1)
    return (-1);
  *value = msg->some_bytes_data;
  *plen = msg->some_bytes_length;
  return (0);
}
