
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


 int value_ind (struct value*) ;

__attribute__((used)) static int
wrap_value_ind (char *opaque_arg)
{
  struct gdb_wrapper_arguments *args = (struct gdb_wrapper_arguments *) opaque_arg;
  struct value *val;

  val = (struct value *) (args)->args[0].pointer;
  (args)->result.pointer = value_ind (val);
  return 1;
}
