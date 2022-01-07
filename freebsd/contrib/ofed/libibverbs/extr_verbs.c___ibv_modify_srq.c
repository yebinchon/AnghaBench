
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_srq_attr {int dummy; } ;
struct ibv_srq {TYPE_2__* context; } ;
struct TYPE_3__ {int (* modify_srq ) (struct ibv_srq*,struct ibv_srq_attr*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct ibv_srq*,struct ibv_srq_attr*,int) ;

int __ibv_modify_srq(struct ibv_srq *srq,
       struct ibv_srq_attr *srq_attr,
       int srq_attr_mask)
{
 return srq->context->ops.modify_srq(srq, srq_attr, srq_attr_mask);
}
