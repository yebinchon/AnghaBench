
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct catch_errors_args {void* func_args; int * func; } ;
typedef int return_mask ;
typedef enum return_reason { ____Placeholder_return_reason } return_reason ;
typedef int catch_errors_ftype ;


 int catcher (int ,int ,struct catch_errors_args*,int*,int*,char*,int *,int ) ;
 int do_catch_errors ;
 int uiout ;

int
catch_errors (catch_errors_ftype *func, void *func_args, char *errstring,
       return_mask mask)
{
  int val;
  enum return_reason caught;
  struct catch_errors_args args;
  args.func = func;
  args.func_args = func_args;
  catcher (do_catch_errors, uiout, &args, &val, &caught, errstring,
    ((void*)0), mask);
  if (caught != 0)
    return 0;
  return val;
}
