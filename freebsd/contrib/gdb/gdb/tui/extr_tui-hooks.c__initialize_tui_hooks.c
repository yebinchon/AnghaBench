
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int target_new_objfile_hook ;
 int tui_new_objfile_hook ;
 int tui_target_new_objfile_chain ;

void
_initialize_tui_hooks (void)
{

  tui_target_new_objfile_chain = target_new_objfile_hook;
  target_new_objfile_hook = tui_new_objfile_hook;
}
