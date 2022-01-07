
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {int authz_id; int full; int * pool; } ;
typedef TYPE_1__ svn_authz_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int authz_read (int *,int *,char const*,char const*,int ,int *,int *,int *) ;

svn_error_t *
svn_repos_authz_read3(svn_authz_t **authz_p,
                      const char *path,
                      const char *groups_path,
                      svn_boolean_t must_exist,
                      svn_repos_t *repos_hint,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_authz_t *authz = apr_pcalloc(result_pool, sizeof(*authz));
  authz->pool = result_pool;

  SVN_ERR(authz_read(&authz->full, &authz->authz_id, path, groups_path,
                     must_exist, repos_hint, result_pool, scratch_pool));

  *authz_p = authz;
  return SVN_NO_ERROR;
}
