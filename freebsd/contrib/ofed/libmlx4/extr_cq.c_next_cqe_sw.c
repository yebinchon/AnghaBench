
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cqe {int dummy; } ;
struct mlx4_cq {int cons_index; } ;


 struct mlx4_cqe* get_sw_cqe (struct mlx4_cq*,int ) ;

__attribute__((used)) static struct mlx4_cqe *next_cqe_sw(struct mlx4_cq *cq)
{
 return get_sw_cqe(cq, cq->cons_index);
}
