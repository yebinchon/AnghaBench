
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int convert_int_to_ascii (int ,char*,int ) ;
 int register_data (int,int) ;
 int register_size (int) ;

void
collect_register_as_string (int n, char *buf)
{
  convert_int_to_ascii (register_data (n, 1), buf, register_size (n));
}
