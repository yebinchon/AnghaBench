
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_rwq_ind_table {int dummy; } ;


 int free (struct ibv_rwq_ind_table*) ;
 int ibv_cmd_destroy_rwq_ind_table (struct ibv_rwq_ind_table*) ;

int mlx5_destroy_rwq_ind_table(struct ibv_rwq_ind_table *rwq_ind_table)
{
 int ret;

 ret = ibv_cmd_destroy_rwq_ind_table(rwq_ind_table);

 if (ret)
  return ret;

 free(rwq_ind_table);
 return 0;
}
