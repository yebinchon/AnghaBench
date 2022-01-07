
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ svn_node_dir ;
 int svn_wc__db_base_remove (int ,char const*,int ,int ,int ,int ,int *,int *,int *) ;
 int svn_wc__db_external_read (int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int ,char const*,char const*,int *,int *) ;
 int svn_wc__db_external_remove (int ,char const*,char const*,int *,int *) ;
 int svn_wc__wq_run (int ,char const*,int ,void*,int *) ;
 int svn_wc_remove_from_revision_control2 (TYPE_1__*,char const*,int ,int ,int ,void*,int *) ;

svn_error_t *
svn_wc__external_remove(svn_wc_context_t *wc_ctx,
                        const char *wri_abspath,
                        const char *local_abspath,
                        svn_boolean_t declaration_only,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;

  SVN_ERR(svn_wc__db_external_read(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0),
                                   wc_ctx->db, local_abspath, wri_abspath,
                                   scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__db_external_remove(wc_ctx->db, local_abspath, wri_abspath,
                                     ((void*)0), scratch_pool));

  if (declaration_only)
    return SVN_NO_ERROR;

  if (kind == svn_node_dir)
    SVN_ERR(svn_wc_remove_from_revision_control2(wc_ctx, local_abspath,
                                                 TRUE, TRUE,
                                                 cancel_func, cancel_baton,
                                                 scratch_pool));
  else
    {
      SVN_ERR(svn_wc__db_base_remove(wc_ctx->db, local_abspath,
                                     FALSE, TRUE, FALSE,
                                     0,
                                     ((void*)0), ((void*)0), scratch_pool));
      SVN_ERR(svn_wc__wq_run(wc_ctx->db, local_abspath,
                             cancel_func, cancel_baton,
                             scratch_pool));
    }

  return SVN_NO_ERROR;
}
