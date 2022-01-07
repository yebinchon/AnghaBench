
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_stuff {int load_addr; int name; struct so_stuff* next; } ;


 int max_dll_name_len ;
 int printf_filtered (char*,int ,char*,...) ;
 struct so_stuff solib_start ;

void
info_dll_command (char *ignore, int from_tty)
{
  struct so_stuff *so = &solib_start;

  if (!so->next)
    return;

  printf_filtered ("%*s  Load Address\n", -max_dll_name_len, "DLL Name");
  while ((so = so->next) != ((void*)0))
    printf_filtered ("%*s  %08lx\n", -max_dll_name_len, so->name, so->load_addr);

  return;
}
