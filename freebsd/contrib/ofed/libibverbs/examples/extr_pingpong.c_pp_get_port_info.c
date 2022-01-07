
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_port_attr {int dummy; } ;
struct ibv_context {int dummy; } ;


 int ibv_query_port (struct ibv_context*,int,struct ibv_port_attr*) ;

int pp_get_port_info(struct ibv_context *context, int port,
       struct ibv_port_attr *attr)
{
 return ibv_query_port(context, port, attr);
}
