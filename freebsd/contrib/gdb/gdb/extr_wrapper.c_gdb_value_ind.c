
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_4__ {scalar_t__ pointer; } ;
struct gdb_wrapper_arguments {TYPE_2__ result; TYPE_1__* args; } ;
typedef int catch_errors_ftype ;
struct TYPE_3__ {struct value* pointer; } ;


 int RETURN_MASK_ERROR ;
 int catch_errors (int *,struct gdb_wrapper_arguments*,char*,int ) ;
 scalar_t__ wrap_value_ind ;

int
gdb_value_ind (struct value *val, struct value **rval)
{
  struct gdb_wrapper_arguments args;

  args.args[0].pointer = val;

  if (!catch_errors ((catch_errors_ftype *) wrap_value_ind, &args,
       "", RETURN_MASK_ERROR))
    {

      return 0;
    }

  *rval = (struct value *) args.result.pointer;
  return 1;
}
