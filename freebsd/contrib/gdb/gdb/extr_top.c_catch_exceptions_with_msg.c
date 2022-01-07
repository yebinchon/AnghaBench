
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
typedef int return_mask ;
typedef enum return_reason { ____Placeholder_return_reason } return_reason ;
typedef int catch_exceptions_ftype ;


 int catcher (int *,struct ui_out*,void*,int*,int*,char*,char**,int ) ;
 int gdb_assert (int) ;

int
catch_exceptions_with_msg (struct ui_out *uiout,
        catch_exceptions_ftype *func,
        void *func_args,
        char *errstring,
      char **gdberrmsg,
        return_mask mask)
{
  int val;
  enum return_reason caught;
  catcher (func, uiout, func_args, &val, &caught, errstring, gdberrmsg, mask);
  gdb_assert (val >= 0);
  gdb_assert (caught <= 0);
  if (caught < 0)
    return caught;
  return val;
}
