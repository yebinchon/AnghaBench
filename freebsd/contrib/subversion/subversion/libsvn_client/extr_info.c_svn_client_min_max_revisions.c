
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_wc__min_max_revisions (int *,int *,int ,char const*,int ,int *) ;

svn_error_t *
svn_client_min_max_revisions(svn_revnum_t *min_revision,
                             svn_revnum_t *max_revision,
                             const char *local_abspath,
                             svn_boolean_t committed,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *scratch_pool)
{
  return svn_wc__min_max_revisions(min_revision, max_revision, ctx->wc_ctx,
                                   local_abspath, committed, scratch_pool);
}
