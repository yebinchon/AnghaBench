
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dv_rwq {int stride; int wqe_cnt; int dbrec; int buf; scalar_t__ comp_mask; } ;
struct TYPE_2__ {int wqe_shift; int wqe_cnt; } ;
struct mlx5_rwq {TYPE_1__ rq; int recv_db; int pbuff; } ;
struct ibv_wq {int dummy; } ;


 struct mlx5_rwq* to_mrwq (struct ibv_wq*) ;

__attribute__((used)) static int mlx5dv_get_rwq(struct ibv_wq *wq_in,
     struct mlx5dv_rwq *rwq_out)
{
 struct mlx5_rwq *mrwq = to_mrwq(wq_in);

 rwq_out->comp_mask = 0;
 rwq_out->buf = mrwq->pbuff;
 rwq_out->dbrec = mrwq->recv_db;
 rwq_out->wqe_cnt = mrwq->rq.wqe_cnt;
 rwq_out->stride = 1 << mrwq->rq.wqe_shift;

 return 0;
}
