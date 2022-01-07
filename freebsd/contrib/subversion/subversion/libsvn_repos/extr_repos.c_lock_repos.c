
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int fs_type; } ;
typedef TYPE_1__ svn_repos_t ;
struct TYPE_12__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_EAGAIN (int ) ;
 int SVN_ERR_W (TYPE_2__*,int ) ;
 int SVN_FS_TYPE_BDB ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_io_file_lock2 (char const*,int ,int ,int *) ;
 char* svn_repos_db_lockfile (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
lock_repos(svn_repos_t *repos,
           svn_boolean_t exclusive,
           svn_boolean_t nonblocking,
           apr_pool_t *pool)
{
  if (strcmp(repos->fs_type, SVN_FS_TYPE_BDB) == 0)
    {
      svn_error_t *err;
      const char *lockfile_path = svn_repos_db_lockfile(repos, pool);

      err = svn_io_file_lock2(lockfile_path, exclusive, nonblocking, pool);
      if (err != ((void*)0) && APR_STATUS_IS_EAGAIN(err->apr_err))
        return svn_error_trace(err);
      SVN_ERR_W(err, _("Error opening db lockfile"));
    }
  return SVN_NO_ERROR;
}
