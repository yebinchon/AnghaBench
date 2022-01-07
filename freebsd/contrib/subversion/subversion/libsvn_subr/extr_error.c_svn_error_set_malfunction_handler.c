
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_malfunction_handler_t ;


 int malfunction_handler ;

svn_error_malfunction_handler_t
svn_error_set_malfunction_handler(svn_error_malfunction_handler_t func)
{
  svn_error_malfunction_handler_t old_malfunction_handler
    = malfunction_handler;

  malfunction_handler = func;
  return old_malfunction_handler;
}
