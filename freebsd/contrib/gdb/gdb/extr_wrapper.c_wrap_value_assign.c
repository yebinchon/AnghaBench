
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_4__ {int pointer; } ;
struct gdb_wrapper_arguments {TYPE_2__ result; TYPE_1__* args; } ;
struct TYPE_3__ {scalar_t__ pointer; } ;


 int value_assign (struct value*,struct value*) ;

__attribute__((used)) static int
wrap_value_assign (char *a)
{
  struct gdb_wrapper_arguments *args = (struct gdb_wrapper_arguments *) a;
  struct value *val1;
  struct value *val2;

  val1 = (struct value *) (args)->args[0].pointer;
  val2 = (struct value *) (args)->args[1].pointer;

  (args)->result.pointer = value_assign (val1, val2);
  return 1;
}
