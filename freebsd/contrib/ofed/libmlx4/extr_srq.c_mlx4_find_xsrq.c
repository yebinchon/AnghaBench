
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx4_xsrq_table {int num_xsrq; int shift; int mask; TYPE_1__* xsrq_table; } ;
struct mlx4_srq {int dummy; } ;
struct TYPE_2__ {struct mlx4_srq** table; scalar_t__ refcnt; } ;



struct mlx4_srq *mlx4_find_xsrq(struct mlx4_xsrq_table *xsrq_table, uint32_t srqn)
{
 int index;

 index = (srqn & (xsrq_table->num_xsrq - 1)) >> xsrq_table->shift;
 if (xsrq_table->xsrq_table[index].refcnt)
  return xsrq_table->xsrq_table[index].table[srqn & xsrq_table->mask];

 return ((void*)0);
}
