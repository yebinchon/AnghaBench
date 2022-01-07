
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_srq {int srqn; } ;
struct ibv_srq {int dummy; } ;


 struct mlx5_srq* to_msrq (struct ibv_srq*) ;

int mlx5_get_srq_num(struct ibv_srq *srq, uint32_t *srq_num)
{
 struct mlx5_srq *msrq = to_msrq(srq);

 *srq_num = msrq->srqn;

 return 0;
}
