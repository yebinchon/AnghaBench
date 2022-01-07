
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_cq {TYPE_1__* cqe; } ;
struct ibv_cq_ex {int dummy; } ;
typedef enum ibv_wc_opcode { ____Placeholder_ibv_wc_opcode } ibv_wc_opcode ;
struct TYPE_2__ {int owner_sr_opcode; } ;


 int IBV_WC_BIND_MW ;
 int IBV_WC_COMP_SWAP ;
 int IBV_WC_FETCH_ADD ;
 int IBV_WC_LOCAL_INV ;
 int IBV_WC_RDMA_READ ;
 int IBV_WC_RDMA_WRITE ;
 int IBV_WC_RECV ;
 int IBV_WC_RECV_RDMA_WITH_IMM ;
 int IBV_WC_SEND ;
 int MLX4_CQE_IS_SEND_MASK ;
 int MLX4_CQE_OPCODE_MASK ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static enum ibv_wc_opcode mlx4_cq_read_wc_opcode(struct ibv_cq_ex *ibcq)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 if (cq->cqe->owner_sr_opcode & MLX4_CQE_IS_SEND_MASK) {
  switch (cq->cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) {
  case 135:
  case 136:
   return IBV_WC_RDMA_WRITE;
  case 132:
  case 133:
  case 134:
   return IBV_WC_SEND;
  case 137:
   return IBV_WC_RDMA_READ;
  case 141:
   return IBV_WC_COMP_SWAP;
  case 140:
   return IBV_WC_FETCH_ADD;
  case 138:
   return IBV_WC_LOCAL_INV;
  case 139:
   return IBV_WC_BIND_MW;
  }
 } else {
  switch (cq->cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) {
  case 131:
   return IBV_WC_RECV_RDMA_WITH_IMM;
  case 128:
  case 129:
  case 130:
   return IBV_WC_RECV;
  }
 }

 return 0;
}
