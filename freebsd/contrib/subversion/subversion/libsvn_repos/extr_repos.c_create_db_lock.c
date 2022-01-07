
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fs_type; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_W (int ,int ) ;
 int SVN_FS_TYPE_BDB ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* bdb_lock_file_contents ;
 char* pre12_compat_unneeded_file_contents ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_io_file_create (char const*,char const*,int *) ;
 char* svn_repos_db_lockfile (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
create_db_lock(svn_repos_t *repos, apr_pool_t *pool) {
  const char *contents;
  const char *lockfile_path;

  lockfile_path = svn_repos_db_lockfile(repos, pool);
  if (strcmp(repos->fs_type, SVN_FS_TYPE_BDB) == 0)
    contents = bdb_lock_file_contents;
  else
    contents = pre12_compat_unneeded_file_contents;

  SVN_ERR_W(svn_io_file_create(lockfile_path, contents, pool),
            _("Creating db lock file"));

  return SVN_NO_ERROR;
}
