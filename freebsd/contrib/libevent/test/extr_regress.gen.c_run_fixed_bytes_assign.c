
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int fixed_bytes_set; int fixed_bytes_data; } ;
typedef int ev_uint8_t ;


 int memcpy (int ,int const*,int) ;

int
run_fixed_bytes_assign(struct run *msg, const ev_uint8_t *value)
{
  msg->fixed_bytes_set = 1;
  memcpy(msg->fixed_bytes_data, value, 24);
  return (0);
}
