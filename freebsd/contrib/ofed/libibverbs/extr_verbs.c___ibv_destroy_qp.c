
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_qp {TYPE_2__* context; } ;
struct TYPE_3__ {int (* destroy_qp ) (struct ibv_qp*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct ibv_qp*) ;

int __ibv_destroy_qp(struct ibv_qp *qp)
{
 return qp->context->ops.destroy_qp(qp);
}
