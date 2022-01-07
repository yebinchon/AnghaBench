
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_command_args {char* arg; int from_tty; int * command; } ;
typedef int return_mask ;
typedef int catch_command_errors_ftype ;


 int catch_errors (int ,struct captured_command_args*,char*,int ) ;
 int do_captured_command ;

int
catch_command_errors (catch_command_errors_ftype * command,
        char *arg, int from_tty, return_mask mask)
{
  struct captured_command_args args;
  args.command = command;
  args.arg = arg;
  args.from_tty = from_tty;
  return catch_errors (do_captured_command, &args, "", mask);
}
