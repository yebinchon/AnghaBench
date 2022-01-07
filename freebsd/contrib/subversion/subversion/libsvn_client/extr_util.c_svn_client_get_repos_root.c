
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_ra_session_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_12__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_client_open_ra_session2 (int **,char const*,int *,TYPE_2__*,int *,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_path_is_url (char const*) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_get_uuid2 (int *,char const**,int *) ;
 TYPE_1__* svn_wc__node_get_repos_info (int *,int *,char const**,char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_client_get_repos_root(const char **repos_root,
                          const char **repos_uuid,
                          const char *abspath_or_url,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;


  if (!svn_path_is_url(abspath_or_url))
    {
      svn_error_t *err;
      err = svn_wc__node_get_repos_info(((void*)0), ((void*)0), repos_root, repos_uuid,
                                        ctx->wc_ctx, abspath_or_url,
                                        result_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
              && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
            return svn_error_trace(err);

          svn_error_clear(err);
          if (repos_root)
            *repos_root = ((void*)0);
          if (repos_uuid)
            *repos_uuid = ((void*)0);
        }
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_client_open_ra_session2(&ra_session, abspath_or_url, ((void*)0),
                                      ctx, scratch_pool, scratch_pool));

  if (repos_root)
    SVN_ERR(svn_ra_get_repos_root2(ra_session, repos_root, result_pool));
  if (repos_uuid)
    SVN_ERR(svn_ra_get_uuid2(ra_session, repos_uuid, result_pool));

  return SVN_NO_ERROR;
}
