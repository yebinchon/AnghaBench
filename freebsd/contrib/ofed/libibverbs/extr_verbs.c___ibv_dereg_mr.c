
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_mr {size_t length; TYPE_2__* context; void* addr; } ;
struct TYPE_3__ {int (* dereg_mr ) (struct ibv_mr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int ibv_dofork_range (void*,size_t) ;
 int stub1 (struct ibv_mr*) ;

int __ibv_dereg_mr(struct ibv_mr *mr)
{
 int ret;
 void *addr = mr->addr;
 size_t length = mr->length;

 ret = mr->context->ops.dereg_mr(mr);
 if (!ret)
  ibv_dofork_range(addr, length);

 return ret;
}
