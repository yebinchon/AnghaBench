
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_wc__db_read_repos_info (int *,char const**,char const**,int *,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__node_get_url(const char **url,
                     svn_wc_context_t *wc_ctx,
                     const char *local_abspath,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  const char *repos_relpath;

  SVN_ERR(svn_wc__db_read_repos_info(((void*)0), &repos_relpath, &repos_root_url,
                                     ((void*)0),
                                     wc_ctx->db, local_abspath,
                                     scratch_pool, scratch_pool));

  *url = svn_path_url_add_component2(repos_root_url, repos_relpath,
                                     result_pool);

  return SVN_NO_ERROR;
}
