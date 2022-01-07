
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx4_cq {int cons_index; } ;


 scalar_t__ get_sw_cqe (struct mlx4_cq*,int) ;

int mlx4_get_outstanding_cqes(struct mlx4_cq *cq)
{
 uint32_t i;

 for (i = cq->cons_index; get_sw_cqe(cq, i); ++i)
  ;

 return i - cq->cons_index;
}
