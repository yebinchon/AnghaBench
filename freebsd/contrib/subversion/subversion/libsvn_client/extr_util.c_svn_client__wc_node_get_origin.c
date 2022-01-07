
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_7__ {int repos_root_url; int url; int repos_uuid; int rev; } ;
typedef TYPE_2__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_palloc (int *,int) ;
 int svn_path_url_add_component2 (int ,char const*,int *) ;
 int svn_wc__node_get_origin (int *,int *,char const**,int *,int *,int *,int *,int ,char const*,int ,int *,int *) ;

svn_error_t *
svn_client__wc_node_get_origin(svn_client__pathrev_t **origin_p,
                               const char *wc_abspath,
                               svn_client_ctx_t *ctx,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  const char *relpath;

  *origin_p = apr_palloc(result_pool, sizeof(**origin_p));

  SVN_ERR(svn_wc__node_get_origin(((void*)0) ,
                                  &(*origin_p)->rev,
                                  &relpath,
                                  &(*origin_p)->repos_root_url,
                                  &(*origin_p)->repos_uuid,
                                  ((void*)0), ((void*)0),
                                  ctx->wc_ctx, wc_abspath,
                                  FALSE ,
                                  result_pool, scratch_pool));
  if ((*origin_p)->repos_root_url && relpath)
    {
      (*origin_p)->url = svn_path_url_add_component2(
                           (*origin_p)->repos_root_url, relpath, result_pool);
    }
  else
    {
      *origin_p = ((void*)0);
    }
  return SVN_NO_ERROR;
}
