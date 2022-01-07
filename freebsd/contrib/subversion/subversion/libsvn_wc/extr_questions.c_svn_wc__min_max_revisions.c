
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__db_min_max_revisions (int *,int *,int ,char const*,int ,int *) ;

svn_error_t *
svn_wc__min_max_revisions(svn_revnum_t *min_revision,
                          svn_revnum_t *max_revision,
                          svn_wc_context_t *wc_ctx,
                          const char *local_abspath,
                          svn_boolean_t committed,
                          apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_wc__db_min_max_revisions(min_revision,
                                                      max_revision,
                                                      wc_ctx->db,
                                                      local_abspath,
                                                      committed,
                                                      scratch_pool));
}
