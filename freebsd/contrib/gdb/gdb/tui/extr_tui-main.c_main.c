
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_main_args {int argc; char** argv; int interpreter_p; scalar_t__ use_windows; } ;


 int INTERP_TUI ;
 int gdb_main (struct captured_main_args*) ;
 int memset (struct captured_main_args*,int ,int) ;

int
main (int argc, char **argv)
{
  struct captured_main_args args;
  memset (&args, 0, sizeof args);
  args.argc = argc;
  args.argv = argv;
  args.use_windows = 0;
  args.interpreter_p = INTERP_TUI;
  return gdb_main (&args);
}
