
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_wclock_release (int ,char const*,int *) ;
 int svn_wc__db_wq_fetch_next (int *,int **,int ,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc__release_write_lock(svn_wc_context_t *wc_ctx,
                           const char *local_abspath,
                           apr_pool_t *scratch_pool)
{
  apr_uint64_t id;
  svn_skel_t *work_item;

  SVN_ERR(svn_wc__db_wq_fetch_next(&id, &work_item, wc_ctx->db, local_abspath,
                                   0, scratch_pool, scratch_pool));
  if (work_item)
    {

      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_wc__db_wclock_release(wc_ctx->db, local_abspath, scratch_pool));

  return SVN_NO_ERROR;
}
