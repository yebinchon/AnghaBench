
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_stack_frame_args {int args; int source; int level; int fi; } ;


 int print_frame_info (int ,int ,int ,int ) ;

__attribute__((used)) static int
print_stack_frame_stub (void *args)
{
  struct print_stack_frame_args *p = (struct print_stack_frame_args *) args;

  print_frame_info (p->fi, p->level, p->source, p->args);
  return 0;
}
