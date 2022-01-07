
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pointer; } ;
struct gdb_wrapper_arguments {TYPE_2__* args; TYPE_1__ result; } ;
struct block {int dummy; } ;
struct TYPE_4__ {int integer; scalar_t__ pointer; } ;


 int parse_exp_1 (char**,struct block*,int ) ;

__attribute__((used)) static int
wrap_parse_exp_1 (char *argptr)
{
  struct gdb_wrapper_arguments *args
    = (struct gdb_wrapper_arguments *) argptr;
  args->result.pointer = parse_exp_1((char **) args->args[0].pointer,
         (struct block *) args->args[1].pointer,
         args->args[2].integer);
  return 1;
}
