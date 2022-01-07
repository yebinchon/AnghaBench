
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atexit (int ) ;
 int tui_exit ;
 int tui_initialize_io () ;
 int tui_initialize_readline () ;
 int tui_initialize_static_data () ;

__attribute__((used)) static void *
tui_init (void)
{

  atexit (tui_exit);

  tui_initialize_static_data ();

  tui_initialize_io ();
  tui_initialize_readline ();

  return ((void*)0);
}
