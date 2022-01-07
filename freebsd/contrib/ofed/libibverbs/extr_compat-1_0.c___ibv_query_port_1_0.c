
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ibv_port_attr {int dummy; } ;
struct ibv_context_1_0 {int real_context; } ;


 int ibv_query_port (int ,int ,struct ibv_port_attr*) ;

int __ibv_query_port_1_0(struct ibv_context_1_0 *context, uint8_t port_num,
    struct ibv_port_attr *port_attr)
{
 return ibv_query_port(context->real_context, port_num, port_attr);
}
