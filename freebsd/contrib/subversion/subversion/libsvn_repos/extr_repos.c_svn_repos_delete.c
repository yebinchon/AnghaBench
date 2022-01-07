
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_REPOS__DB_DIR ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs_delete_fs (char const*,int *) ;
 int svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;

svn_error_t *
svn_repos_delete(const char *path,
                 apr_pool_t *pool)
{
  const char *db_path = svn_dirent_join(path, SVN_REPOS__DB_DIR, pool);


  SVN_ERR(svn_fs_delete_fs(db_path, pool));


  return svn_error_trace(svn_io_remove_dir2(path, FALSE, ((void*)0), ((void*)0), pool));
}
