
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx4_xsrq_table {int num_xsrq; int shift; int mask; int mutex; TYPE_1__* xsrq_table; } ;
struct mlx4_srq {int dummy; } ;
struct TYPE_2__ {struct mlx4_srq** table; int refcnt; } ;


 struct mlx4_srq** calloc (int,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mlx4_store_xsrq(struct mlx4_xsrq_table *xsrq_table, uint32_t srqn,
      struct mlx4_srq *srq)
{
 int index, ret = 0;

 index = (srqn & (xsrq_table->num_xsrq - 1)) >> xsrq_table->shift;
 pthread_mutex_lock(&xsrq_table->mutex);
 if (!xsrq_table->xsrq_table[index].refcnt) {
  xsrq_table->xsrq_table[index].table = calloc(xsrq_table->mask + 1,
            sizeof(struct mlx4_srq *));
  if (!xsrq_table->xsrq_table[index].table) {
   ret = -1;
   goto out;
  }
 }

 xsrq_table->xsrq_table[index].refcnt++;
 xsrq_table->xsrq_table[index].table[srqn & xsrq_table->mask] = srq;

out:
 pthread_mutex_unlock(&xsrq_table->mutex);
 return ret;
}
