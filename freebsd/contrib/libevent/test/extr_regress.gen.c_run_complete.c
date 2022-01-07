
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int fixed_bytes_set; int how_set; } ;



int
run_complete(struct run *msg)
{
  if (!msg->how_set)
    return (-1);
  if (!msg->fixed_bytes_set)
    return (-1);
  return (0);
}
