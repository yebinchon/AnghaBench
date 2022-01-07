
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,int ,int ) ;
 int register_data (int,int) ;
 int register_size (int) ;

void
collect_register (int n, void *buf)
{
  memcpy (buf, register_data (n, 1), register_size (n));
}
