
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int repos_root_url; int url; int repos_uuid; int rev; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_palloc (int *,int) ;
 int svn_path_url_add_component2 (int ,char const*,int *) ;
 int svn_wc__node_get_base (int *,int *,char const**,int *,int *,int *,int *,char const*,int ,int *,int *) ;

svn_error_t *
svn_client__wc_node_get_base(svn_client__pathrev_t **base_p,
                             const char *wc_abspath,
                             svn_wc_context_t *wc_ctx,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *relpath;

  *base_p = apr_palloc(result_pool, sizeof(**base_p));

  SVN_ERR(svn_wc__node_get_base(((void*)0),
                                &(*base_p)->rev,
                                &relpath,
                                &(*base_p)->repos_root_url,
                                &(*base_p)->repos_uuid,
                                ((void*)0),
                                wc_ctx, wc_abspath,
                                TRUE ,
                                result_pool, scratch_pool));
  if ((*base_p)->repos_root_url && relpath)
    {
      (*base_p)->url = svn_path_url_add_component2(
                           (*base_p)->repos_root_url, relpath, result_pool);
    }
  else
    {
      *base_p = ((void*)0);
    }
  return SVN_NO_ERROR;
}
