
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int * SVN_NO_ERROR ;
 int abort () ;

__attribute__((used)) static svn_error_t *
crashtest_malfunction_handler(svn_boolean_t can_return,
                              const char *file,
                              int line,
                              const char *expr)
{
  abort();
  return SVN_NO_ERROR;
}
