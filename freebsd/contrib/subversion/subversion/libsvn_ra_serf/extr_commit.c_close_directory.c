
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int path; int base_revision; int prop_changes; int relpath; int * commit_ctx; int * pool; } ;
typedef TYPE_1__ proppatch_context_t ;
struct TYPE_7__ {TYPE_5__* commit_ctx; int pool; int working_url; int url; int base_revision; int prop_changes; int relpath; } ;
typedef TYPE_2__ dir_context_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int open_batons; int session; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ USING_HTTPV2_COMMIT_SUPPORT (TYPE_5__*) ;
 scalar_t__ apr_hash_count (int ) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int proppatch_resource (int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
close_directory(void *dir_baton,
                apr_pool_t *pool)
{
  dir_context_t *dir = dir_baton;






  if (apr_hash_count(dir->prop_changes))
    {
      proppatch_context_t *proppatch_ctx;

      proppatch_ctx = apr_pcalloc(pool, sizeof(*proppatch_ctx));
      proppatch_ctx->pool = pool;
      proppatch_ctx->commit_ctx = ((void*)0) ;
      proppatch_ctx->relpath = dir->relpath;
      proppatch_ctx->prop_changes = dir->prop_changes;
      proppatch_ctx->base_revision = dir->base_revision;

      if (USING_HTTPV2_COMMIT_SUPPORT(dir->commit_ctx))
        {
          proppatch_ctx->path = dir->url;
        }
      else
        {
          proppatch_ctx->path = dir->working_url;
        }

      SVN_ERR(proppatch_resource(dir->commit_ctx->session,
                                 proppatch_ctx, dir->pool));
    }

  dir->commit_ctx->open_batons--;

  return SVN_NO_ERROR;
}
