
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cq {int cons_index; int * dbrec; } ;


 size_t MLX5_CQ_SET_CI ;
 int htobe32 (int) ;

__attribute__((used)) static void update_cons_index(struct mlx5_cq *cq)
{
 cq->dbrec[MLX5_CQ_SET_CI] = htobe32(cq->cons_index & 0xffffff);
}
