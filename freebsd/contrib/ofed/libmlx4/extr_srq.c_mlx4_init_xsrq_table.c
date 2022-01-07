
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_xsrq_table {int num_xsrq; int shift; int mask; int mutex; } ;


 int MLX4_XSRQ_TABLE_BITS ;
 int ffs (int) ;
 int memset (struct mlx4_xsrq_table*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;

void mlx4_init_xsrq_table(struct mlx4_xsrq_table *xsrq_table, int size)
{
 memset(xsrq_table, 0, sizeof *xsrq_table);
 xsrq_table->num_xsrq = size;
 xsrq_table->shift = ffs(size) - 1 - MLX4_XSRQ_TABLE_BITS;
 xsrq_table->mask = (1 << xsrq_table->shift) - 1;

 pthread_mutex_init(&xsrq_table->mutex, ((void*)0));
}
