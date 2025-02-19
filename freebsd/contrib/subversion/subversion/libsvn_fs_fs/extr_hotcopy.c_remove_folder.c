
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOTEMPTY (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_io_remove_dir2 (char const*,int ,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
remove_folder(const char *path,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *pool)
{
  svn_error_t *err = svn_io_remove_dir2(path, TRUE,
                                        cancel_func, cancel_baton, pool);

  if (err && APR_STATUS_IS_ENOTEMPTY(err->apr_err))
    {
      svn_error_clear(err);
      err = SVN_NO_ERROR;
    }

  return svn_error_trace(err);
}
