
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_cqe {int dummy; } ;
struct TYPE_2__ {struct mlx4_cqe* buf; } ;
struct mlx4_cq {int cqe_size; TYPE_1__ buf; } ;



__attribute__((used)) static struct mlx4_cqe *get_cqe(struct mlx4_cq *cq, int entry)
{
 return cq->buf.buf + entry * cq->cqe_size;
}
