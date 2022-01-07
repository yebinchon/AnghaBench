
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pointer; } ;
struct gdb_wrapper_arguments {TYPE_2__* args; TYPE_1__ result; } ;
struct expression {int dummy; } ;
struct TYPE_4__ {scalar_t__ pointer; } ;


 scalar_t__ evaluate_expression (struct expression*) ;

__attribute__((used)) static int
wrap_evaluate_expression (char *a)
{
  struct gdb_wrapper_arguments *args = (struct gdb_wrapper_arguments *) a;

  (args)->result.pointer =
    (char *) evaluate_expression ((struct expression *) args->args[0].pointer);
  return 1;
}
