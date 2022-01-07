
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CANNOT_DELETE_FILE_EXTERNAL ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 scalar_t__ svn_node_none ;
 int svn_wc__read_external_info (scalar_t__*,char const**,int *,int *,int *,int ,char const*,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
check_external(const char *local_abspath,
               svn_client_ctx_t *ctx,
               apr_pool_t *scratch_pool)
{
  svn_node_kind_t external_kind;
  const char *defining_abspath;

  SVN_ERR(svn_wc__read_external_info(&external_kind, &defining_abspath, ((void*)0),
                                     ((void*)0), ((void*)0),
                                     ctx->wc_ctx, local_abspath,
                                     local_abspath, TRUE,
                                     scratch_pool, scratch_pool));

  if (external_kind != svn_node_none)
    return svn_error_createf(SVN_ERR_WC_CANNOT_DELETE_FILE_EXTERNAL, ((void*)0),
                             _("Cannot remove the external at '%s'; "
                               "please edit or delete the svn:externals "
                               "property on '%s'"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool),
                             svn_dirent_local_style(defining_abspath,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}
