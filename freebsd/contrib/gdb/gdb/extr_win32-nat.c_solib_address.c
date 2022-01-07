
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_stuff {scalar_t__ load_addr; scalar_t__ end_addr; char* name; struct so_stuff* next; } ;
typedef scalar_t__ CORE_ADDR ;


 struct so_stuff solib_start ;

char *
solib_address (CORE_ADDR address)
{
  struct so_stuff *so;
  for (so = &solib_start; so->next != ((void*)0); so = so->next)
    if (address >= so->load_addr && address <= so->end_addr)
      return so->name;
  return ((void*)0);
}
