
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_cq {TYPE_2__* context; } ;
struct TYPE_3__ {int (* resize_cq ) (struct ibv_cq*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int ENOSYS ;
 int stub1 (struct ibv_cq*,int) ;

int __ibv_resize_cq(struct ibv_cq *cq, int cqe)
{
 if (!cq->context->ops.resize_cq)
  return ENOSYS;

 return cq->context->ops.resize_cq(cq, cqe);
}
