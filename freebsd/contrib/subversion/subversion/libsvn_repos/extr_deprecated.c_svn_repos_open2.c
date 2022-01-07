
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_repos_open3 (int **,char const*,int *,int *,int *) ;

svn_error_t *
svn_repos_open2(svn_repos_t **repos_p,
                const char *path,
                apr_hash_t *fs_config,
                apr_pool_t *pool)
{
  return svn_repos_open3(repos_p, path, fs_config, pool, pool);
}
