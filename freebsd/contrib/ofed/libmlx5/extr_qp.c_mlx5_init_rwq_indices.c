
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; } ;
struct mlx5_rwq {TYPE_1__ rq; } ;



void mlx5_init_rwq_indices(struct mlx5_rwq *rwq)
{
 rwq->rq.head = 0;
 rwq->rq.tail = 0;
}
