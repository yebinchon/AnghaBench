
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plug {int ctx; int dataptr; } ;
struct iter_ctx {scalar_t__ ret; scalar_t__ (* func ) (int ,int ,int ,int ) ;int userctx; int context; } ;
typedef struct plug* heim_object_t ;


 scalar_t__ KRB5_PLUGIN_NO_HANDLE ;
 scalar_t__ stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
eval_results(heim_object_t value, void *ctx)
{
    struct plug *pl = value;
    struct iter_ctx *s = ctx;

    if (s->ret != KRB5_PLUGIN_NO_HANDLE)
 return;

    s->ret = s->func(s->context, pl->dataptr, pl->ctx, s->userctx);
}
