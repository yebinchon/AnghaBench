
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 TYPE_2__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;


 int svn_node_none ;

 int svn_node_unknown ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 TYPE_2__* svn_wc__db_external_read (scalar_t__*,int*,char const**,char const**,int *,char const**,int *,int *,int ,char const*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_normal ;

svn_error_t *
svn_wc__read_external_info(svn_node_kind_t *external_kind,
                           const char **defining_abspath,
                           const char **defining_url,
                           svn_revnum_t *defining_operational_revision,
                           svn_revnum_t *defining_revision,
                           svn_wc_context_t *wc_ctx,
                           const char *wri_abspath,
                           const char *local_abspath,
                           svn_boolean_t ignore_enoent,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_error_t *err;

  err = svn_wc__db_external_read(&status, &kind, defining_abspath,
                                 defining_url ? &repos_root_url : ((void*)0), ((void*)0),
                                 defining_url, defining_operational_revision,
                                 defining_revision,
                                 wc_ctx->db, local_abspath, wri_abspath,
                                 result_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND || !ignore_enoent)
        return svn_error_trace(err);

      svn_error_clear(err);

      if (external_kind)
        *external_kind = svn_node_none;

      if (defining_abspath)
        *defining_abspath = ((void*)0);

      if (defining_url)
        *defining_url = ((void*)0);

      if (defining_operational_revision)
        *defining_operational_revision = SVN_INVALID_REVNUM;

      if (defining_revision)
        *defining_revision = SVN_INVALID_REVNUM;

      return SVN_NO_ERROR;
    }

  if (external_kind)
    {
      if (status != svn_wc__db_status_normal)
        *external_kind = svn_node_unknown;
      else
        switch(kind)
          {
            case 129:
            case 128:
              *external_kind = 129;
              break;
            case 130:
              *external_kind = 130;
              break;
            default:
              *external_kind = svn_node_none;
          }
    }

  if (defining_url && *defining_url)
    *defining_url = svn_path_url_add_component2(repos_root_url, *defining_url,
                                                result_pool);

  return SVN_NO_ERROR;
}
