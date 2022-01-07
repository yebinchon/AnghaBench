
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_pd {TYPE_2__* context; } ;
struct ibv_ah_attr {int dummy; } ;
struct ibv_ah {struct ibv_pd* pd; TYPE_2__* context; } ;
struct TYPE_3__ {struct ibv_ah* (* create_ah ) (struct ibv_pd*,struct ibv_ah_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 struct ibv_ah* stub1 (struct ibv_pd*,struct ibv_ah_attr*) ;

struct ibv_ah *__ibv_create_ah(struct ibv_pd *pd, struct ibv_ah_attr *attr)
{
 struct ibv_ah *ah = pd->context->ops.create_ah(pd, attr);

 if (ah) {
  ah->context = pd->context;
  ah->pd = pd;
 }

 return ah;
}
