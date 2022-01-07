
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device_attr {int dummy; } ;
struct ibv_context_1_0 {int real_context; } ;


 int ibv_query_device (int ,struct ibv_device_attr*) ;

int __ibv_query_device_1_0(struct ibv_context_1_0 *context,
      struct ibv_device_attr *device_attr)
{
 return ibv_query_device(context->real_context, device_attr);
}
