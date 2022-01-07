
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backtrace_command_args {char* count_exp; int show_locals; int from_tty; } ;


 int RETURN_MASK_ERROR ;
 int backtrace_command_stub ;
 int catch_errors (int ,char*,char*,int ) ;

__attribute__((used)) static void
backtrace_full_command (char *arg, int from_tty)
{
  struct backtrace_command_args btargs;
  btargs.count_exp = arg;
  btargs.show_locals = 1;
  btargs.from_tty = from_tty;
  catch_errors (backtrace_command_stub, (char *)&btargs, "", RETURN_MASK_ERROR);
}
