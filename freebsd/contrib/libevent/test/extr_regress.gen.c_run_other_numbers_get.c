
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int other_numbers_length; int * other_numbers_data; int other_numbers_set; } ;
typedef int ev_uint32_t ;



int
run_other_numbers_get(struct run *msg, int offset,
    ev_uint32_t *value)
{
  if (!msg->other_numbers_set || offset < 0 || offset >= msg->other_numbers_length)
    return (-1);
  *value = msg->other_numbers_data[offset];
  return (0);
}
