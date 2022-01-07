
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_path_is_url (char const*) ;
 char* svn_uri_canonicalize (char const*,int *) ;
 int svn_wc__node_get_url (char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_client_url_from_path2(const char **url,
                          const char *path_or_url,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  if (!svn_path_is_url(path_or_url))
    {
      SVN_ERR(svn_dirent_get_absolute(&path_or_url, path_or_url,
                                      scratch_pool));

      return svn_error_trace(
                 svn_wc__node_get_url(url, ctx->wc_ctx, path_or_url,
                                      result_pool, scratch_pool));
    }
  else
    *url = svn_uri_canonicalize(path_or_url, result_pool);

  return SVN_NO_ERROR;
}
