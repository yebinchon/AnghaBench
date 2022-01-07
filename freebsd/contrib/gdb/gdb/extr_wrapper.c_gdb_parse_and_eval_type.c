
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct type {int dummy; } ;
struct TYPE_4__ {scalar_t__ pointer; } ;
struct gdb_wrapper_arguments {TYPE_2__ result; TYPE_1__* args; } ;
typedef int catch_errors_ftype ;
struct TYPE_3__ {char* pointer; int integer; } ;


 int RETURN_MASK_ALL ;
 int catch_errors (int *,struct gdb_wrapper_arguments*,char*,int ) ;
 scalar_t__ wrap_parse_and_eval_type ;

int
gdb_parse_and_eval_type (char *p, int length, struct type **type)
{
  struct gdb_wrapper_arguments args;
  args.args[0].pointer = p;
  args.args[1].integer = length;

  if (!catch_errors ((catch_errors_ftype *) wrap_parse_and_eval_type, &args,
       "", RETURN_MASK_ALL))
    {

      return 0;
    }

  *type = (struct type *) args.result.pointer;
  return 1;
}
