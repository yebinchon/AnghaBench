
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_2__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_wc__db_scan_moved (char const**,int *,int *,char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__node_was_moved_here(const char **moved_from_abspath,
                            const char **delete_op_root_abspath,
                            svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  if (moved_from_abspath)
    *moved_from_abspath = ((void*)0);
  if (delete_op_root_abspath)
    *delete_op_root_abspath = ((void*)0);

  err = svn_wc__db_scan_moved(moved_from_abspath, ((void*)0), ((void*)0),
                              delete_op_root_abspath,
                              wc_ctx->db, local_abspath,
                              result_pool, scratch_pool);

  if (err)
    {

      if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
        return svn_error_trace(err);


      svn_error_clear(err);
      return SVN_NO_ERROR;
    }

  return SVN_NO_ERROR;
}
