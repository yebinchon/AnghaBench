
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct repos_info_baton {char const* last_repos; char const* last_uuid; int * state_pool; int ctx; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_pstrdup (int *,char const*) ;
 int svn_client_get_repos_root (char const**,char const**,char const*,int ,int *,int *) ;
 scalar_t__ svn_uri__is_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
fetch_repos_info(const char **repos_root,
                 const char **repos_uuid,
                 void *baton,
                 const char *url,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct repos_info_baton *ri = baton;


  if (ri->last_repos && svn_uri__is_ancestor(ri->last_repos, url))
    {
      *repos_root = apr_pstrdup(result_pool, ri->last_repos);
      *repos_uuid = apr_pstrdup(result_pool, ri->last_uuid);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_client_get_repos_root(repos_root, repos_uuid, url, ri->ctx,
                                    result_pool, scratch_pool));


  ri->last_repos = apr_pstrdup(ri->state_pool, *repos_root);
  ri->last_uuid = apr_pstrdup(ri->state_pool, *repos_uuid);

  return SVN_NO_ERROR;
}
