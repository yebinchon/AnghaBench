
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_lock_t ;
typedef int svn_fs_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ;
 scalar_t__ SVN_ERR_FS_NO_SUCH_LOCK ;
 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* get_lock (int **,int *,char const*,int ,int ,int *) ;
 int svn_error_clear (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
get_lock_helper(svn_fs_t *fs,
                svn_lock_t **lock_p,
                const char *path,
                svn_boolean_t have_write_lock,
                apr_pool_t *pool)
{
  svn_lock_t *lock;
  svn_error_t *err;

  err = get_lock(&lock, fs, path, have_write_lock, FALSE, pool);



  if (err && ((err->apr_err == SVN_ERR_FS_NO_SUCH_LOCK)
              || (err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)))
    {
      svn_error_clear(err);
      *lock_p = ((void*)0);
      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);

  *lock_p = lock;
  return SVN_NO_ERROR;
}
