
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ibv_cq* cq; int cq_ex; } ;
struct pingpong_context {TYPE_1__ cq_s; } ;
struct ibv_cq {int dummy; } ;


 struct ibv_cq* ibv_cq_ex_to_cq (int ) ;
 scalar_t__ use_ts ;

__attribute__((used)) static struct ibv_cq *pp_cq(struct pingpong_context *ctx)
{
 return use_ts ? ibv_cq_ex_to_cq(ctx->cq_s.cq_ex) :
  ctx->cq_s.cq;
}
