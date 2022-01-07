
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx4_cq {TYPE_1__* cqe; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int rlid; } ;


 int be16toh (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static uint32_t mlx4_cq_read_wc_slid(struct ibv_cq_ex *ibcq)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 return (uint32_t)be16toh(cq->cqe->rlid);
}
