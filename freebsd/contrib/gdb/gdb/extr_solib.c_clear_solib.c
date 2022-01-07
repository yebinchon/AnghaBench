
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_list {scalar_t__ abfd; struct so_list* next; } ;


 int TARGET_SO_CLEAR_SOLIB () ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_aout_flavour ;
 int disable_breakpoints_in_shlibs (int) ;
 int * exec_bfd ;
 int free_so (struct so_list*) ;
 int remove_target_sections (scalar_t__) ;
 struct so_list* so_list_head ;

void
clear_solib (void)
{
  if (exec_bfd != ((void*)0)
      && bfd_get_flavour (exec_bfd) != bfd_target_aout_flavour)
    disable_breakpoints_in_shlibs (1);

  while (so_list_head)
    {
      struct so_list *so = so_list_head;
      so_list_head = so->next;
      if (so->abfd)
 remove_target_sections (so->abfd);
      free_so (so);
    }

  TARGET_SO_CLEAR_SOLIB ();
}
