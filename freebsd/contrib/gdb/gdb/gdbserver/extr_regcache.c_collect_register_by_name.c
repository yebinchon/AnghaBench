
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int collect_register (int ,void*) ;
 int find_regno (char const*) ;

void
collect_register_by_name (const char *name, void *buf)
{
  collect_register (find_regno (name), buf);
}
