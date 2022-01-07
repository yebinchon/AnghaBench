
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ interface_id; } ;
struct TYPE_5__ {TYPE_1__ global; } ;
struct pingpong_dest {TYPE_2__ gid; int lid; } ;
struct pingpong_context {int ah; int pd; int qp; } ;
struct ibv_qp_attr {int sq_psn; int qp_state; } ;
struct TYPE_6__ {int hop_limit; int sgid_index; TYPE_2__ dgid; } ;
struct ibv_ah_attr {int is_global; int sl; int port_num; TYPE_3__ grh; int src_path_bits; int dlid; } ;


 int IBV_QPS_RTR ;
 int IBV_QPS_RTS ;
 int IBV_QP_SQ_PSN ;
 int IBV_QP_STATE ;
 int fprintf (int ,char*) ;
 int ibv_create_ah (int ,struct ibv_ah_attr*) ;
 scalar_t__ ibv_modify_qp (int ,struct ibv_qp_attr*,int) ;
 int stderr ;

__attribute__((used)) static int pp_connect_ctx(struct pingpong_context *ctx, int port, int my_psn,
     int sl, struct pingpong_dest *dest, int sgid_idx)
{
 struct ibv_ah_attr ah_attr = {
  .is_global = 0,
  .dlid = dest->lid,
  .sl = sl,
  .src_path_bits = 0,
  .port_num = port
 };
 struct ibv_qp_attr attr = {
  .qp_state = IBV_QPS_RTR
 };

 if (ibv_modify_qp(ctx->qp, &attr, IBV_QP_STATE)) {
  fprintf(stderr, "Failed to modify QP to RTR\n");
  return 1;
 }

 attr.qp_state = IBV_QPS_RTS;
 attr.sq_psn = my_psn;

 if (ibv_modify_qp(ctx->qp, &attr,
     IBV_QP_STATE |
     IBV_QP_SQ_PSN)) {
  fprintf(stderr, "Failed to modify QP to RTS\n");
  return 1;
 }

 if (dest->gid.global.interface_id) {
  ah_attr.is_global = 1;
  ah_attr.grh.hop_limit = 1;
  ah_attr.grh.dgid = dest->gid;
  ah_attr.grh.sgid_index = sgid_idx;
 }

 ctx->ah = ibv_create_ah(ctx->pd, &ah_attr);
 if (!ctx->ah) {
  fprintf(stderr, "Failed to create AH\n");
  return 1;
 }

 return 0;
}
