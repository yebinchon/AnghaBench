
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_cq {int cqe_sz; TYPE_1__* active_buf; } ;
struct TYPE_2__ {void* buf; } ;



__attribute__((used)) static void *get_cqe(struct mlx5_cq *cq, int n)
{
 return cq->active_buf->buf + n * cq->cqe_sz;
}
