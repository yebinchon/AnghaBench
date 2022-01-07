
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong_context {int srq; TYPE_1__* mr; int size; int buf; } ;
struct ibv_sge {uintptr_t addr; int lkey; int length; } ;
struct ibv_recv_wr {int num_sge; struct ibv_sge* sg_list; int wr_id; } ;
struct TYPE_2__ {int lkey; } ;


 int PINGPONG_RECV_WRID ;
 scalar_t__ ibv_post_srq_recv (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;

__attribute__((used)) static int pp_post_recv(struct pingpong_context *ctx, int n)
{
 struct ibv_sge list = {
  .addr = (uintptr_t) ctx->buf,
  .length = ctx->size,
  .lkey = ctx->mr->lkey
 };
 struct ibv_recv_wr wr = {
  .wr_id = PINGPONG_RECV_WRID,
  .sg_list = &list,
  .num_sge = 1,
 };
 struct ibv_recv_wr *bad_wr;
 int i;

 for (i = 0; i < n; ++i)
  if (ibv_post_srq_recv(ctx->srq, &wr, &bad_wr))
   break;

 return i;
}
