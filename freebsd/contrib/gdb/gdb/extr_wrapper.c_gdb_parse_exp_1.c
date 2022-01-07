
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer; } ;
struct gdb_wrapper_arguments {TYPE_1__ result; TYPE_2__* args; } ;
struct expression {int dummy; } ;
typedef char* block ;
typedef int catch_errors_ftype ;
struct TYPE_4__ {char** pointer; int integer; } ;


 int RETURN_MASK_ERROR ;
 int catch_errors (int *,struct gdb_wrapper_arguments*,char*,int ) ;
 scalar_t__ wrap_parse_exp_1 ;

int
gdb_parse_exp_1 (char **stringptr, struct block *block, int comma,
   struct expression **expression)
{
  struct gdb_wrapper_arguments args;
  args.args[0].pointer = stringptr;
  args.args[1].pointer = block;
  args.args[2].integer = comma;

  if (!catch_errors ((catch_errors_ftype *) wrap_parse_exp_1, &args,
       "", RETURN_MASK_ERROR))
    {

      return 0;
    }

  *expression = (struct expression *) args.result.pointer;
  return 1;

}
