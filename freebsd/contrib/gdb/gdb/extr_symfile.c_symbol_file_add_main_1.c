
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESET_HP_UX_GLOBALS () ;
 int reinit_frame_cache () ;
 int set_initial_language () ;
 int symbol_file_add (char*,int,int *,int,int) ;

__attribute__((used)) static void
symbol_file_add_main_1 (char *args, int from_tty, int flags)
{
  symbol_file_add (args, from_tty, ((void*)0), 1, flags);







  reinit_frame_cache ();

  set_initial_language ();
}
