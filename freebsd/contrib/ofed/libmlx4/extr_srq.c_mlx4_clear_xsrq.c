
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mlx4_xsrq_table {int num_xsrq; int shift; int mask; int mutex; TYPE_1__* xsrq_table; } ;
struct TYPE_2__ {int ** table; scalar_t__ refcnt; } ;


 int free (int **) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mlx4_clear_xsrq(struct mlx4_xsrq_table *xsrq_table, uint32_t srqn)
{
 int index;

 index = (srqn & (xsrq_table->num_xsrq - 1)) >> xsrq_table->shift;
 pthread_mutex_lock(&xsrq_table->mutex);

 if (--xsrq_table->xsrq_table[index].refcnt)
  xsrq_table->xsrq_table[index].table[srqn & xsrq_table->mask] = ((void*)0);
 else
  free(xsrq_table->xsrq_table[index].table);

 pthread_mutex_unlock(&xsrq_table->mutex);
}
