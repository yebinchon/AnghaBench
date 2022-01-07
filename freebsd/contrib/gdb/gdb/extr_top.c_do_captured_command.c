
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_command_args {int from_tty; int arg; int (* command ) (int ,int ) ;} ;


 int ALL_CLEANUPS ;
 int do_cleanups (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
do_captured_command (void *data)
{
  struct captured_command_args *context = data;
  context->command (context->arg, context->from_tty);







  do_cleanups (ALL_CLEANUPS);
  return 1;
}
