
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wqe_shift; } ;
struct mlx5_rwq {void* pbuff; TYPE_1__ rq; } ;



__attribute__((used)) static void *get_wq_recv_wqe(struct mlx5_rwq *rwq, int n)
{
 return rwq->pbuff + (n << rwq->rq.wqe_shift);
}
