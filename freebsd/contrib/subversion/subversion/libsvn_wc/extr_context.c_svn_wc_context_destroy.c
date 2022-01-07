
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_pool; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;
 int apr_pool_cleanup_run (int ,TYPE_1__*,int ) ;
 int close_ctx_apr ;

svn_error_t *
svn_wc_context_destroy(svn_wc_context_t *wc_ctx)
{

  apr_pool_cleanup_run(wc_ctx->state_pool, wc_ctx, close_ctx_apr);

  return SVN_NO_ERROR;
}
