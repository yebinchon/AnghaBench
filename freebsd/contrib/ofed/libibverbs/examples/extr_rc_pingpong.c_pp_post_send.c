
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong_context {int qp; int send_flags; TYPE_1__* mr; int size; int buf; } ;
struct ibv_sge {uintptr_t addr; int lkey; int length; } ;
struct ibv_send_wr {int num_sge; int send_flags; int opcode; struct ibv_sge* sg_list; int wr_id; } ;
struct TYPE_2__ {int lkey; } ;


 int IBV_WR_SEND ;
 int PINGPONG_SEND_WRID ;
 int ibv_post_send (int ,struct ibv_send_wr*,struct ibv_send_wr**) ;

__attribute__((used)) static int pp_post_send(struct pingpong_context *ctx)
{
 struct ibv_sge list = {
  .addr = (uintptr_t) ctx->buf,
  .length = ctx->size,
  .lkey = ctx->mr->lkey
 };
 struct ibv_send_wr wr = {
  .wr_id = PINGPONG_SEND_WRID,
  .sg_list = &list,
  .num_sge = 1,
  .opcode = IBV_WR_SEND,
  .send_flags = ctx->send_flags,
 };
 struct ibv_send_wr *bad_wr;

 return ibv_post_send(ctx->qp, &wr, &bad_wr);
}
