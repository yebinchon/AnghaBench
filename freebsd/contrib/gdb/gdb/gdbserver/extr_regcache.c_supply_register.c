
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (int ,void const*,int ) ;
 int register_data (int,int ) ;
 int register_size (int) ;

void
supply_register (int n, const void *buf)
{
  memcpy (register_data (n, 0), buf, register_size (n));
}
