
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_regno (char const*) ;
 int supply_register (int ,void const*) ;

void
supply_register_by_name (const char *name, const void *buf)
{
  supply_register (find_regno (name), buf);
}
