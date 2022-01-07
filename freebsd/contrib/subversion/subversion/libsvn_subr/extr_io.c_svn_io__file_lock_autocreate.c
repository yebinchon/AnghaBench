
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_EEXIST (int ) ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int TRUE ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_io_file_create_empty (char const*,int *) ;
 TYPE_1__* svn_io_file_lock2 (char const*,int ,int ,int *) ;

svn_error_t *
svn_io__file_lock_autocreate(const char *lock_file,
                             apr_pool_t *pool)
{
  svn_error_t *err
    = svn_io_file_lock2(lock_file, TRUE, FALSE, pool);
  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {


      svn_error_clear(err);



      err = svn_io_file_create_empty(lock_file, pool);
      if (err && APR_STATUS_IS_EEXIST(err->apr_err))
        {
          svn_error_clear(err);
          err = ((void*)0);
        }


      if (!err)
        err = svn_io_file_lock2(lock_file, TRUE, FALSE, pool);
    }

  return svn_error_trace(err);
}
