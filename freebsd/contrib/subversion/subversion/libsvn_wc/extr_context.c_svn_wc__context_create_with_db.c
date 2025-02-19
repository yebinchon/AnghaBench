
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int close_db_on_destroy; int * db; int * state_pool; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int close_ctx_apr ;

svn_error_t *
svn_wc__context_create_with_db(svn_wc_context_t **wc_ctx,
                               svn_config_t *config,
                               svn_wc__db_t *db,
                               apr_pool_t *result_pool)
{
  svn_wc_context_t *ctx = apr_pcalloc(result_pool, sizeof(*ctx));




  ctx->state_pool = result_pool;
  ctx->db = db;
  ctx->close_db_on_destroy = FALSE;

  apr_pool_cleanup_register(result_pool, ctx, close_ctx_apr,
                            apr_pool_cleanup_null);

  *wc_ctx = ctx;

  return SVN_NO_ERROR;
}
