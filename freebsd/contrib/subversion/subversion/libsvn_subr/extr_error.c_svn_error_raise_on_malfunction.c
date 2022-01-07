
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int SVN_ERR_ASSERTION_FAIL ;
 int _ (char*) ;
 int abort () ;
 int svn_error__locate (char const*,int) ;
 int * svn_error_createf (int ,int *,int ,char const*,int,...) ;

svn_error_t *
svn_error_raise_on_malfunction(svn_boolean_t can_return,
                               const char *file, int line,
                               const char *expr)
{
  if (!can_return)
    abort();




  svn_error__locate(file, line);

  if (expr)
    return svn_error_createf(SVN_ERR_ASSERTION_FAIL, ((void*)0),
                             _("In file '%s' line %d: assertion failed (%s)"),
                             file, line, expr);
  else
    return svn_error_createf(SVN_ERR_ASSERTION_FAIL, ((void*)0),
                             _("In file '%s' line %d: internal malfunction"),
                             file, line);
}
