
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 int abort () ;
 int stderr ;
 int * svn_error_raise_on_malfunction (int ,char const*,int,char const*) ;
 int svn_handle_error2 (int *,int ,int ,char*) ;

svn_error_t *
svn_error_abort_on_malfunction(svn_boolean_t can_return,
                               const char *file, int line,
                               const char *expr)
{
  svn_error_t *err = svn_error_raise_on_malfunction(TRUE, file, line, expr);

  svn_handle_error2(err, stderr, FALSE, "svn: ");
  abort();
  return err;
}
