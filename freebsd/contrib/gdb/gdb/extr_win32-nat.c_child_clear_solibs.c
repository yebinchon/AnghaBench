
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct so_stuff {struct so_stuff* next; } ;
struct TYPE_3__ {int * objfile; struct so_stuff* next; } ;


 int max_dll_name_len ;
 TYPE_1__* solib_end ;
 TYPE_1__ solib_start ;
 int xfree (struct so_stuff*) ;

void
child_clear_solibs (void)
{
  struct so_stuff *so, *so1 = solib_start.next;

  while ((so = so1) != ((void*)0))
    {
      so1 = so->next;
      xfree (so);
    }

  solib_start.next = ((void*)0);
  solib_start.objfile = ((void*)0);
  solib_end = &solib_start;
  max_dll_name_len = sizeof ("DLL Name") - 1;
}
