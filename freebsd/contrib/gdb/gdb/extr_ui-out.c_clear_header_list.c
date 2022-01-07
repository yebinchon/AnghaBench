
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* header_next; int * header_last; TYPE_2__* header_first; } ;
struct ui_out {TYPE_1__ table; } ;
struct TYPE_4__ {struct TYPE_4__* colhdr; struct TYPE_4__* next; } ;


 int gdb_assert (int ) ;
 int xfree (TYPE_2__*) ;

__attribute__((used)) static void
clear_header_list (struct ui_out *uiout)
{
  while (uiout->table.header_first != ((void*)0))
    {
      uiout->table.header_next = uiout->table.header_first;
      uiout->table.header_first = uiout->table.header_first->next;
      if (uiout->table.header_next->colhdr != ((void*)0))
 xfree (uiout->table.header_next->colhdr);
      xfree (uiout->table.header_next);
    }
  gdb_assert (uiout->table.header_first == ((void*)0));
  uiout->table.header_last = ((void*)0);
  uiout->table.header_next = ((void*)0);
}
