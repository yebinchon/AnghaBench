
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ text_addr; scalar_t__ text_end; char* name; } ;
struct so_list {struct so_list* next; TYPE_1__ som_solib; } ;
typedef scalar_t__ CORE_ADDR ;


 struct so_list* so_list_head ;

char *
som_solib_address (CORE_ADDR addr)
{
  struct so_list *so = so_list_head;

  while (so)
    {



      if ((addr >= so->som_solib.text_addr) && (addr <= so->som_solib.text_end))
 return so->som_solib.name;


      so = so->next;
    }


  return ((void*)0);
}
