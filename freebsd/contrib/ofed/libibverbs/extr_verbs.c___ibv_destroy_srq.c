
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_srq {TYPE_2__* context; } ;
struct TYPE_3__ {int (* destroy_srq ) (struct ibv_srq*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct ibv_srq*) ;

int __ibv_destroy_srq(struct ibv_srq *srq)
{
 return srq->context->ops.destroy_srq(srq);
}
