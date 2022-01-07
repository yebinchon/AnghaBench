
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rsn; } ;
struct mlx5_rwq {int db; TYPE_1__ rsc; } ;
struct ibv_wq {int context; int cq; } ;
struct TYPE_5__ {int lock; } ;


 int __mlx5_cq_clean (TYPE_2__*,int ,int *) ;
 int free (struct mlx5_rwq*) ;
 int ibv_cmd_destroy_wq (struct ibv_wq*) ;
 int mlx5_clear_uidx (int ,int ) ;
 int mlx5_free_db (int ,int ) ;
 int mlx5_free_rwq_buf (struct mlx5_rwq*,int ) ;
 int mlx5_spin_lock (int *) ;
 int mlx5_spin_unlock (int *) ;
 TYPE_2__* to_mcq (int ) ;
 int to_mctx (int ) ;
 struct mlx5_rwq* to_mrwq (struct ibv_wq*) ;

int mlx5_destroy_wq(struct ibv_wq *wq)
{
 struct mlx5_rwq *rwq = to_mrwq(wq);
 int ret;

 ret = ibv_cmd_destroy_wq(wq);
 if (ret)
  return ret;

 mlx5_spin_lock(&to_mcq(wq->cq)->lock);
 __mlx5_cq_clean(to_mcq(wq->cq), rwq->rsc.rsn, ((void*)0));
 mlx5_spin_unlock(&to_mcq(wq->cq)->lock);
 mlx5_clear_uidx(to_mctx(wq->context), rwq->rsc.rsn);
 mlx5_free_db(to_mctx(wq->context), rwq->db);
 mlx5_free_rwq_buf(rwq, wq->context);
 free(rwq);

 return 0;
}
