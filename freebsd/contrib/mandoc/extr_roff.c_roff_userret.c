
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {scalar_t__ mstackpos; struct mctx* mstack; } ;
struct mctx {int argc; int * argv; } ;


 int assert (int) ;
 int free (int ) ;

void
roff_userret(struct roff *r)
{
 struct mctx *ctx;
 int i;

 assert(r->mstackpos >= 0);
 ctx = r->mstack + r->mstackpos;
 for (i = 0; i < ctx->argc; i++)
  free(ctx->argv[i]);
 ctx->argc = 0;
 r->mstackpos--;
}
