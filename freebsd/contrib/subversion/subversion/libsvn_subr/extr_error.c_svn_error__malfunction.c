
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int * malfunction_handler (int ,char const*,int,char const*) ;

svn_error_t *
svn_error__malfunction(svn_boolean_t can_return,
                       const char *file, int line,
                       const char *expr)
{
  return malfunction_handler(can_return, file, line, expr);
}
