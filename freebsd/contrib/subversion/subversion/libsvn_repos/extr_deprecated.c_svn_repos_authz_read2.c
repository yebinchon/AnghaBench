
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int svn_authz_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_repos_authz_read3 (int **,char const*,char const*,int ,int *,int *,int *) ;

svn_error_t *
svn_repos_authz_read2(svn_authz_t **authz_p,
                      const char *path,
                      const char *groups_path,
                      svn_boolean_t must_exist,
                      apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  svn_error_t *err = svn_repos_authz_read3(authz_p, path, groups_path,
                                           must_exist, ((void*)0),
                                           pool, scratch_pool);
  svn_pool_destroy(scratch_pool);

  return svn_error_trace(err);
}
