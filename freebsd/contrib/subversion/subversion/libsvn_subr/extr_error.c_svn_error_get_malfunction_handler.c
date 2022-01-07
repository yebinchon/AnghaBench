
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_malfunction_handler_t ;


 int malfunction_handler ;

svn_error_malfunction_handler_t
svn_error_get_malfunction_handler(void)
{
  return malfunction_handler;
}
