
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibv_cq_1_0 {int real_cq; TYPE_3__* context; } ;
struct TYPE_6__ {TYPE_2__* real_context; } ;
struct TYPE_4__ {int (* req_notify_cq ) (int ,int) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;


 int stub1 (int ,int) ;

__attribute__((used)) static int req_notify_cq_wrapper_1_0(struct ibv_cq_1_0 *cq, int sol_only)
{
 return cq->context->real_context->ops.req_notify_cq(cq->real_cq, sol_only);
}
