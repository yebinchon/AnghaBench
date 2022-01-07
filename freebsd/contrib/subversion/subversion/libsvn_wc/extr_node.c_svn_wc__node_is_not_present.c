
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_base_get_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

svn_error_t *
svn_wc__node_is_not_present(svn_boolean_t *is_not_present,
                            svn_boolean_t *is_excluded,
                            svn_boolean_t *is_server_excluded,
                            svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            svn_boolean_t base_only,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;

  if (base_only)
    {
      SVN_ERR(svn_wc__db_base_get_info(&status,
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0),
                                       wc_ctx->db, local_abspath,
                                       scratch_pool, scratch_pool));
    }
  else
    {
      SVN_ERR(svn_wc__db_read_info(&status,
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   wc_ctx->db, local_abspath,
                                   scratch_pool, scratch_pool));
    }

  if (is_not_present)
    *is_not_present = (status == svn_wc__db_status_not_present);

  if (is_excluded)
    *is_excluded = (status == svn_wc__db_status_excluded);

  if (is_server_excluded)
    *is_server_excluded = (status == svn_wc__db_status_server_excluded);

  return SVN_NO_ERROR;
}
