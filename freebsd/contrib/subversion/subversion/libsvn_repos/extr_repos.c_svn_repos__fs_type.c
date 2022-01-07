
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_REPOS__DB_DIR ;
 int check_repos_format (TYPE_1__*,int *) ;
 int svn_dirent_join (char const*,int ,int *) ;
 int * svn_fs_type (char const**,int ,int *) ;

svn_error_t *
svn_repos__fs_type(const char **fs_type,
                   const char *repos_path,
                   apr_pool_t *pool)
{
  svn_repos_t repos;
  repos.path = (char*)repos_path;

  SVN_ERR(check_repos_format(&repos, pool));

  return svn_fs_type(fs_type,
                     svn_dirent_join(repos_path, SVN_REPOS__DB_DIR, pool),
                     pool);
}
