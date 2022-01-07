
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int cancel_baton; int * (* cancel_func ) (int ) ;int * wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_CLIENT_NO_VERSIONED_PARENT ;
 int SVN_ERR_RESERVED_FILENAME_SPECIFIED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int strlen (char const*) ;
 int * stub1 (int ) ;
 int svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_wc_is_adm_dir (int ,int *) ;
 int * svn_wc_read_kind2 (scalar_t__*,int *,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
find_existing_parent(const char **existing_parent_abspath,
                     svn_client_ctx_t *ctx,
                     const char *local_abspath,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *parent_abspath;
  svn_wc_context_t *wc_ctx = ctx->wc_ctx;

  SVN_ERR(svn_wc_read_kind2(&kind, wc_ctx, local_abspath,
                            FALSE, FALSE, scratch_pool));

  if (kind == svn_node_dir)
    {
      *existing_parent_abspath = apr_pstrdup(result_pool, local_abspath);
      return SVN_NO_ERROR;
    }

  if (svn_dirent_is_root(local_abspath, strlen(local_abspath)))
    return svn_error_create(SVN_ERR_CLIENT_NO_VERSIONED_PARENT, ((void*)0), ((void*)0));

  if (svn_wc_is_adm_dir(svn_dirent_basename(local_abspath, scratch_pool),
                        scratch_pool))
    return svn_error_createf(SVN_ERR_RESERVED_FILENAME_SPECIFIED, ((void*)0),
                             _("'%s' ends in a reserved name"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  parent_abspath = svn_dirent_dirname(local_abspath, scratch_pool);

  if (ctx->cancel_func)
    SVN_ERR(ctx->cancel_func(ctx->cancel_baton));

  SVN_ERR(find_existing_parent(existing_parent_abspath, ctx, parent_abspath,
                               result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
