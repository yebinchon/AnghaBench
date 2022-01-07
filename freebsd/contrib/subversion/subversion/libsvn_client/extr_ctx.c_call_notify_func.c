
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int revision; int prop_state; int content_state; int mime_type; int kind; int action; int path; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct TYPE_5__ {int notify_baton; int (* notify_func ) (int ,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
call_notify_func(void *baton, const svn_wc_notify_t *n, apr_pool_t *pool)
{
  const svn_client_ctx_t *ctx = baton;

  if (ctx->notify_func)
    ctx->notify_func(ctx->notify_baton, n->path, n->action, n->kind,
                     n->mime_type, n->content_state, n->prop_state,
                     n->revision);
}
