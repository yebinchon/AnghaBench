
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int fixed_bytes_set; int * fixed_bytes_data; } ;
typedef int ev_uint8_t ;



int
run_fixed_bytes_get(struct run *msg, ev_uint8_t **value)
{
  if (msg->fixed_bytes_set != 1)
    return (-1);
  *value = msg->fixed_bytes_data;
  return (0);
}
