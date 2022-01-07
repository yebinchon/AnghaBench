
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_list {char* so_name; struct section_table* sections_end; struct section_table* sections; struct so_list* next; } ;
struct section_table {scalar_t__ addr; scalar_t__ endaddr; } ;
typedef scalar_t__ CORE_ADDR ;


 struct so_list* so_list_head ;

char *
solib_address (CORE_ADDR address)
{
  struct so_list *so = 0;

  for (so = so_list_head; so; so = so->next)
    {
      struct section_table *p;

      for (p = so->sections; p < so->sections_end; p++)
 {
   if (p->addr <= address && address < p->endaddr)
     return (so->so_name);
 }
    }

  return (0);
}
