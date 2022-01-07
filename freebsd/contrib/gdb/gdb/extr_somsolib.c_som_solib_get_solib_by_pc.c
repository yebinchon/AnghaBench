
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ text_addr; scalar_t__ text_end; } ;
struct so_list {scalar_t__ solib_addr; struct so_list* next; TYPE_1__ som_solib; } ;
typedef scalar_t__ CORE_ADDR ;


 struct so_list* so_list_head ;

CORE_ADDR
som_solib_get_solib_by_pc (CORE_ADDR addr)
{
  struct so_list *so_list = so_list_head;

  while (so_list)
    {
      if (so_list->som_solib.text_addr <= addr
   && so_list->som_solib.text_end > addr)
 {
   break;
 }
      so_list = so_list->next;
    }
  if (so_list)
    return so_list->solib_addr;
  else
    return 0;
}
