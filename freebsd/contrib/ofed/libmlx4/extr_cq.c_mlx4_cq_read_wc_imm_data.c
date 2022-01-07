
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx4_cq {TYPE_1__* cqe; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int owner_sr_opcode; int immed_rss_invalid; } ;


 int MLX4_CQE_OPCODE_MASK ;

 int be32toh (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static uint32_t mlx4_cq_read_wc_imm_data(struct ibv_cq_ex *ibcq)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 switch (cq->cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) {
 case 128:
  return be32toh(cq->cqe->immed_rss_invalid);
 default:
  return cq->cqe->immed_rss_invalid;
 }
}
