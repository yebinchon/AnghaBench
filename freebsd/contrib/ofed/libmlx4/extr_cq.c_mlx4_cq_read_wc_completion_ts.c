
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mlx4_cq {TYPE_1__* cqe; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int ts_15_8; int ts_7_0; int ts_47_16; } ;


 scalar_t__ be32toh (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static uint64_t mlx4_cq_read_wc_completion_ts(struct ibv_cq_ex *ibcq)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 return ((uint64_t)be32toh(cq->cqe->ts_47_16) << 16) |
          (cq->cqe->ts_15_8 << 8) |
          (cq->cqe->ts_7_0);
}
