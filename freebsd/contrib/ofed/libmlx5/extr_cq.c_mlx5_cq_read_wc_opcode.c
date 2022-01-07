
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_cq {int umr_opcode; TYPE_1__* cqe64; } ;
struct mlx5_context {int dbg_fp; } ;
struct ibv_cq_ex {int context; } ;
typedef enum ibv_wc_opcode { ____Placeholder_ibv_wc_opcode } ibv_wc_opcode ;
struct TYPE_2__ {int sop_drop_qpn; } ;


 int IBV_WC_COMP_SWAP ;
 int IBV_WC_FETCH_ADD ;
 int IBV_WC_RDMA_READ ;
 int IBV_WC_RDMA_WRITE ;
 int IBV_WC_RECV ;
 int IBV_WC_RECV_RDMA_WITH_IMM ;
 int IBV_WC_SEND ;
 int IBV_WC_TSO ;





 int MLX5_DBG_CQ_CQE ;
 int be32toh (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 int mlx5_dbg (int ,int ,char*) ;
 int mlx5dv_get_cqe_opcode (TYPE_1__*) ;
 struct mlx5_cq* to_mcq (int ) ;
 struct mlx5_context* to_mctx (int ) ;

__attribute__((used)) static inline enum ibv_wc_opcode mlx5_cq_read_wc_opcode(struct ibv_cq_ex *ibcq)
{
 struct mlx5_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 switch (mlx5dv_get_cqe_opcode(cq->cqe64)) {
 case 138:
  return IBV_WC_RECV_RDMA_WITH_IMM;
 case 141:
 case 140:
 case 139:
  return IBV_WC_RECV;
 case 142:
  switch (be32toh(cq->cqe64->sop_drop_qpn) >> 24) {
  case 133:
  case 134:
   return IBV_WC_RDMA_WRITE;
  case 131:
  case 132:
  case 130:
   return IBV_WC_SEND;
  case 135:
   return IBV_WC_RDMA_READ;
  case 137:
   return IBV_WC_COMP_SWAP;
  case 136:
   return IBV_WC_FETCH_ADD;
  case 128:
   return cq->umr_opcode;
  case 129:
   return IBV_WC_TSO;
  }
 }
 return 0;
}
