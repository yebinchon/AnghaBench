
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct catch_errors_args {int (* func ) (int ) ;int func_args; } ;


 int stub1 (int ) ;

__attribute__((used)) static int
do_catch_errors (struct ui_out *uiout, void *data)
{
  struct catch_errors_args *args = data;
  return args->func (args->func_args);
}
