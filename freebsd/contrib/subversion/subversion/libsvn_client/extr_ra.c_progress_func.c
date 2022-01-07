
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int progress_baton; int (* progress_func ) (int ,int,int ,int *) ;} ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_7__ {int total_progress; } ;
typedef TYPE_2__ svn_client__private_ctx_t ;
struct TYPE_8__ {scalar_t__ last_progress; TYPE_1__* ctx; } ;
typedef TYPE_3__ callback_baton_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int stub1 (int ,int,int ,int *) ;
 TYPE_2__* svn_client__get_private_ctx (TYPE_1__*) ;

__attribute__((used)) static void
progress_func(apr_off_t progress,
              apr_off_t total,
              void *baton,
              apr_pool_t *pool)
{
  callback_baton_t *b = baton;
  svn_client_ctx_t *public_ctx = b->ctx;
  svn_client__private_ctx_t *private_ctx =
    svn_client__get_private_ctx(public_ctx);

  private_ctx->total_progress += (progress - b->last_progress);
  b->last_progress = progress;

  if (public_ctx->progress_func)
    {



      public_ctx->progress_func(private_ctx->total_progress, -1,
                                public_ctx->progress_baton, pool);
    }
}
