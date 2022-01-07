
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx5_cq {TYPE_1__* cqe64; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int imm_inval_pkey; } ;



 int be32toh (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 int mlx5dv_get_cqe_opcode (TYPE_1__*) ;
 struct mlx5_cq* to_mcq (int ) ;

__attribute__((used)) static inline uint32_t mlx5_cq_read_wc_imm_data(struct ibv_cq_ex *ibcq)
{
 struct mlx5_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 switch (mlx5dv_get_cqe_opcode(cq->cqe64)) {
 case 128:
  return be32toh(cq->cqe64->imm_inval_pkey);
 default:
  return cq->cqe64->imm_inval_pkey;
 }
}
