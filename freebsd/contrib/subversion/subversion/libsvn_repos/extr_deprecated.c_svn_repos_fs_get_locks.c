
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int svn_depth_infinity ;
 int * svn_error_trace (int ) ;
 int svn_repos_fs_get_locks2 (int **,int *,char const*,int ,int ,void*,int *) ;

svn_error_t *
svn_repos_fs_get_locks(apr_hash_t **locks,
                       svn_repos_t *repos,
                       const char *path,
                       svn_repos_authz_func_t authz_read_func,
                       void *authz_read_baton,
                       apr_pool_t *pool)
{
  return svn_error_trace(svn_repos_fs_get_locks2(locks, repos, path,
                                                 svn_depth_infinity,
                                                 authz_read_func,
                                                 authz_read_baton, pool));
}
