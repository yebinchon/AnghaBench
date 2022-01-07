
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int SVN_UNUSED (int *) ;
 int abort () ;
 int getenv (char*) ;

__attribute__((used)) static apr_status_t err_abort(void *data)
{
  svn_error_t *err = data;
  SVN_UNUSED(err);

  if (!getenv("SVN_DBG_NO_ABORT_ON_ERROR_LEAK"))
    abort();
  return APR_SUCCESS;
}
