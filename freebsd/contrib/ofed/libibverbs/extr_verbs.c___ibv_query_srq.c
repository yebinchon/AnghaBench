
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_srq_attr {int dummy; } ;
struct ibv_srq {TYPE_2__* context; } ;
struct TYPE_3__ {int (* query_srq ) (struct ibv_srq*,struct ibv_srq_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct ibv_srq*,struct ibv_srq_attr*) ;

int __ibv_query_srq(struct ibv_srq *srq, struct ibv_srq_attr *srq_attr)
{
 return srq->context->ops.query_srq(srq, srq_attr);
}
