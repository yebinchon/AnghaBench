
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct gdb_wrapper_arguments {TYPE_1__* args; } ;
typedef int catch_errors_ftype ;
struct TYPE_2__ {struct value* pointer; } ;


 int RETURN_MASK_ERROR ;
 int catch_errors (int *,struct gdb_wrapper_arguments*,char*,int ) ;
 scalar_t__ wrap_value_fetch_lazy ;

int
gdb_value_fetch_lazy (struct value *value)
{
  struct gdb_wrapper_arguments args;

  args.args[0].pointer = value;
  return catch_errors ((catch_errors_ftype *) wrap_value_fetch_lazy, &args,
         "", RETURN_MASK_ERROR);
}
