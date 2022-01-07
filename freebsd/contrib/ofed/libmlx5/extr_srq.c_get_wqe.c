
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* buf; } ;
struct mlx5_srq {int wqe_shift; TYPE_1__ buf; } ;



__attribute__((used)) static void *get_wqe(struct mlx5_srq *srq, int n)
{
 return srq->buf.buf + (n << srq->wqe_shift);
}
