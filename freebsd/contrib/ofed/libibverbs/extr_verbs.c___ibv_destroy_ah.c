
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_ah {TYPE_2__* context; } ;
struct TYPE_3__ {int (* destroy_ah ) (struct ibv_ah*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct ibv_ah*) ;

int __ibv_destroy_ah(struct ibv_ah *ah)
{
 return ah->context->ops.destroy_ah(ah);
}
