
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int TRUE ;
 int * get_repos (int **,char const*,int ,int ,int ,int *,int *,int *) ;

svn_error_t *
svn_repos_open3(svn_repos_t **repos_p,
                const char *path,
                apr_hash_t *fs_config,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{



  return get_repos(repos_p, path, FALSE, FALSE, TRUE, fs_config,
                   result_pool, scratch_pool);
}
