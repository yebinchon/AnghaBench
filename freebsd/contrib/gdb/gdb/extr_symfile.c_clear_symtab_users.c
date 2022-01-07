
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int breakpoint_re_set () ;
 int clear_current_source_symtab_and_line () ;
 int clear_displays () ;
 int clear_internalvars () ;
 int clear_pc_function_cache () ;
 int clear_value_history () ;
 int set_default_breakpoint (int ,int ,int ,int ) ;
 int target_new_objfile_hook (int *) ;

void
clear_symtab_users (void)
{


  clear_value_history ();
  clear_displays ();
  clear_internalvars ();
  breakpoint_re_set ();
  set_default_breakpoint (0, 0, 0, 0);
  clear_current_source_symtab_and_line ();
  clear_pc_function_cache ();
  if (target_new_objfile_hook)
    target_new_objfile_hook (((void*)0));
}
