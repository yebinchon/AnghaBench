
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 int svn_wc__db_scan_deletion (int *,char const**,int *,char const**,int ,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_deleted ;

svn_error_t *
svn_wc__node_was_moved_away(const char **moved_to_abspath,
                            const char **op_root_abspath,
                            svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;

  if (moved_to_abspath)
    *moved_to_abspath = ((void*)0);
  if (op_root_abspath)
    *op_root_abspath = ((void*)0);

  SVN_ERR(svn_wc__db_read_info(&status,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               wc_ctx->db, local_abspath,
                               scratch_pool, scratch_pool));

  if (status == svn_wc__db_status_deleted)
    SVN_ERR(svn_wc__db_scan_deletion(((void*)0), moved_to_abspath, ((void*)0),
                                     op_root_abspath, wc_ctx->db,
                                     local_abspath,
                                     result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
