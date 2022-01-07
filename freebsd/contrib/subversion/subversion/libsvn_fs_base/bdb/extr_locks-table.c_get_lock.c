
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_lock_t ;
typedef int svn_fs_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_FS_BAD_LOCK_TOKEN ;
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_fs_bdb__lock_get (int **,int *,char const*,int *,int *) ;
 TYPE_1__* svn_fs_bdb__lock_token_delete (int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_lock(svn_lock_t **lock_p,
         svn_fs_t *fs,
         const char *path,
         const char *lock_token,
         trail_t *trail,
         apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  *lock_p = ((void*)0);



  err = svn_fs_bdb__lock_get(lock_p, fs, lock_token, trail, pool);
  if (err && ((err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)
              || (err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN)))
    {
      svn_error_clear(err);




      err = svn_fs_bdb__lock_token_delete(fs, path, trail, pool);
    }
  return svn_error_trace(err);
}
