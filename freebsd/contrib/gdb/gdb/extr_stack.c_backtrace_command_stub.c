
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backtrace_command_args {int from_tty; int show_locals; int count_exp; } ;


 int backtrace_command_1 (int ,int ,int ) ;

__attribute__((used)) static int
backtrace_command_stub (void *data)
{
  struct backtrace_command_args *args = (struct backtrace_command_args *)data;
  backtrace_command_1 (args->count_exp, args->show_locals, args->from_tty);
  return 0;
}
