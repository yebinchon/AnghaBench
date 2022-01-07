
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cq {int cons_index; } ;


 void* get_sw_cqe (struct mlx5_cq*,int ) ;

__attribute__((used)) static void *next_cqe_sw(struct mlx5_cq *cq)
{
 return get_sw_cqe(cq, cq->cons_index);
}
