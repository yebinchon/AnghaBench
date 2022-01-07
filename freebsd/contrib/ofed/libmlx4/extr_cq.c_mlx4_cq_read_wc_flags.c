
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_cq {int flags; TYPE_1__* cqe; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int owner_sr_opcode; int status; int g_mlpath_rqpn; } ;


 int IBV_WC_GRH ;
 int IBV_WC_IP_CSUM_OK_SHIFT ;
 int IBV_WC_WITH_IMM ;
 int IBV_WC_WITH_INV ;
 int MLX4_CQE_IS_SEND_MASK ;
 int MLX4_CQE_OPCODE_MASK ;
 int MLX4_CQE_STATUS_IPV4_CSUM_OK ;
 int MLX4_CQ_FLAGS_RX_CSUM_VALID ;





 int be32toh (int ) ;
 int htobe32 (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static int mlx4_cq_read_wc_flags(struct ibv_cq_ex *ibcq)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));
 int is_send = cq->cqe->owner_sr_opcode & MLX4_CQE_IS_SEND_MASK;
 int wc_flags = 0;

 if (is_send) {
  switch (cq->cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) {
  case 132:
  case 131:
   wc_flags |= IBV_WC_WITH_IMM;
   break;
  }
 } else {
  if (cq->flags & MLX4_CQ_FLAGS_RX_CSUM_VALID)
   wc_flags |= ((cq->cqe->status &
    htobe32(MLX4_CQE_STATUS_IPV4_CSUM_OK)) ==
    htobe32(MLX4_CQE_STATUS_IPV4_CSUM_OK)) <<
    IBV_WC_IP_CSUM_OK_SHIFT;

  switch (cq->cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) {
  case 130:
  case 129:
   wc_flags |= IBV_WC_WITH_IMM;
   break;
  case 128:
   wc_flags |= IBV_WC_WITH_INV;
   break;
  }
  wc_flags |= (be32toh(cq->cqe->g_mlpath_rqpn) & 0x80000000) ? IBV_WC_GRH : 0;
 }

 return wc_flags;
}
