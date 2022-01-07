
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_wqe_data_seg {int dummy; } ;
struct TYPE_2__ {int wqe_shift; } ;
struct mlx5_qp {int wq_sig; TYPE_1__ rq; } ;


 int copy_to_scat (struct mlx5_wqe_data_seg*,void*,int*,int) ;
 struct mlx5_wqe_data_seg* get_recv_wqe (struct mlx5_qp*,int) ;
 scalar_t__ unlikely (int ) ;

int mlx5_copy_to_recv_wqe(struct mlx5_qp *qp, int idx, void *buf, int size)
{
 struct mlx5_wqe_data_seg *scat;
 int max = 1 << (qp->rq.wqe_shift - 4);

 scat = get_recv_wqe(qp, idx);
 if (unlikely(qp->wq_sig))
  ++scat;

 return copy_to_scat(scat, buf, &size, max);
}
