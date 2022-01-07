
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct mlx5_cq {TYPE_1__* cqe64; } ;
struct ibv_cq_ex {int dummy; } ;
struct TYPE_2__ {int vlan_info; } ;


 int be16toh (int ) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx5_cq* to_mcq (int ) ;

__attribute__((used)) static inline uint16_t mlx5_cq_read_wc_cvlan(struct ibv_cq_ex *ibcq)
{
 struct mlx5_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 return be16toh(cq->cqe64->vlan_info);
}
