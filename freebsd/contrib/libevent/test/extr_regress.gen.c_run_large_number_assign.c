
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int large_number_set; int large_number_data; } ;
typedef int ev_uint64_t ;



int
run_large_number_assign(struct run *msg, const ev_uint64_t value)
{
  msg->large_number_set = 1;
  msg->large_number_data = value;
  return (0);
}
