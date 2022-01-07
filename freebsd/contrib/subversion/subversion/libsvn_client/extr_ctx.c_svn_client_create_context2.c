
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_5__ {int wc_ctx; int * config; struct TYPE_5__* conflict_baton2; int conflict_func2; struct TYPE_5__* notify_baton2; int notify_func2; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_6__ {int magic_id; scalar_t__ magic_null; TYPE_1__ public_ctx; } ;
typedef TYPE_2__ svn_client__private_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int CLIENT_CTX_MAGIC ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int call_conflict_func ;
 int call_notify_func ;
 int * svn_hash_gets (int *,int ) ;
 int svn_wc_context_create (int *,int *,int *,int *) ;

svn_error_t *
svn_client_create_context2(svn_client_ctx_t **ctx,
                           apr_hash_t *cfg_hash,
                           apr_pool_t *pool)
{
  svn_config_t *cfg_config;

  svn_client__private_ctx_t *const private_ctx =
    apr_pcalloc(pool, sizeof(*private_ctx));
  svn_client_ctx_t *const public_ctx = &private_ctx->public_ctx;

  private_ctx->magic_null = 0;
  private_ctx->magic_id = CLIENT_CTX_MAGIC;

  public_ctx->notify_func2 = call_notify_func;
  public_ctx->notify_baton2 = public_ctx;

  public_ctx->conflict_func2 = call_conflict_func;
  public_ctx->conflict_baton2 = public_ctx;

  public_ctx->config = cfg_hash;

  if (cfg_hash)
    cfg_config = svn_hash_gets(cfg_hash, SVN_CONFIG_CATEGORY_CONFIG);
  else
    cfg_config = ((void*)0);

  SVN_ERR(svn_wc_context_create(&public_ctx->wc_ctx, cfg_config,
                                pool, pool));
  *ctx = public_ctx;

  return SVN_NO_ERROR;
}
