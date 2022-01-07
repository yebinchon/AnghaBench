
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_stack_frame_args {int level; int source; int args; struct frame_info* fi; } ;
struct frame_info {int dummy; } ;


 int RETURN_MASK_ALL ;
 int catch_errors (int ,char*,char*,int ) ;
 int print_stack_frame_stub ;

void
print_stack_frame (struct frame_info *fi, int level, int source)
{
  struct print_stack_frame_args args;

  args.fi = fi;
  args.level = level;
  args.source = source;
  args.args = 1;

  catch_errors (print_stack_frame_stub, (char *) &args, "", RETURN_MASK_ALL);
}
