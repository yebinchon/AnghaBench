
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_device_attr {int dummy; } ;
struct TYPE_2__ {int (* query_device ) (struct ibv_context*,struct ibv_device_attr*) ;} ;
struct ibv_context {TYPE_1__ ops; } ;


 int stub1 (struct ibv_context*,struct ibv_device_attr*) ;

int __ibv_query_device(struct ibv_context *context,
         struct ibv_device_attr *device_attr)
{
 return context->ops.query_device(context, device_attr);
}
