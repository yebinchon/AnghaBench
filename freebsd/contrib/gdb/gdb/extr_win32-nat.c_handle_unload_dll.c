
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct so_stuff {scalar_t__ load_addr; scalar_t__ objfile; struct so_stuff* next; } ;
struct TYPE_4__ {scalar_t__ lpBaseOfDll; } ;
struct TYPE_5__ {TYPE_1__ UnloadDll; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef scalar_t__ DWORD ;


 TYPE_3__ current_event ;
 int error (char*,scalar_t__) ;
 int free_objfile (scalar_t__) ;
 struct so_stuff* solib_end ;
 struct so_stuff solib_start ;
 int xfree (struct so_stuff*) ;

__attribute__((used)) static int
handle_unload_dll (void *dummy)
{
  DWORD lpBaseOfDll = (DWORD) current_event.u.UnloadDll.lpBaseOfDll + 0x1000;
  struct so_stuff *so;

  for (so = &solib_start; so->next != ((void*)0); so = so->next)
    if (so->next->load_addr == lpBaseOfDll)
      {
 struct so_stuff *sodel = so->next;
 so->next = sodel->next;
 if (!so->next)
   solib_end = so;
 if (sodel->objfile)
   free_objfile (sodel->objfile);
 xfree(sodel);
 return 1;
      }
  error ("Error: dll starting at 0x%lx not found.\n", (DWORD) lpBaseOfDll);

  return 0;
}
