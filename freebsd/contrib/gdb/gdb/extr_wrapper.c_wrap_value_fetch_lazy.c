
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct gdb_wrapper_arguments {TYPE_1__* args; } ;
struct TYPE_2__ {scalar_t__ pointer; } ;


 int value_fetch_lazy (struct value*) ;

__attribute__((used)) static int
wrap_value_fetch_lazy (char *a)
{
  struct gdb_wrapper_arguments *args = (struct gdb_wrapper_arguments *) a;

  value_fetch_lazy ((struct value *) (args)->args[0].pointer);
  return 1;
}
