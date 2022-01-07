
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ibv_port_attr {int dummy; } ;
struct TYPE_2__ {int (* query_port ) (struct ibv_context*,int ,struct ibv_port_attr*) ;} ;
struct ibv_context {TYPE_1__ ops; } ;


 int stub1 (struct ibv_context*,int ,struct ibv_port_attr*) ;

int __ibv_query_port(struct ibv_context *context, uint8_t port_num,
       struct ibv_port_attr *port_attr)
{
 return context->ops.query_port(context, port_num, port_attr);
}
