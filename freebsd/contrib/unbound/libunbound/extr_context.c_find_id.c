
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int next_querynum; int queries; } ;


 int NUM_ID_TRIES ;
 scalar_t__ rbtree_search (int *,int*) ;

__attribute__((used)) static int
find_id(struct ub_ctx* ctx, int* id)
{
 size_t tries = 0;
 ctx->next_querynum++;
 while(rbtree_search(&ctx->queries, &ctx->next_querynum)) {
  ctx->next_querynum++;
  if(tries++ > NUM_ID_TRIES)
   return 0;
 }
 *id = ctx->next_querynum;
 return 1;
}
