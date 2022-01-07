
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ibv_query_port {int dummy; } ;
struct ibv_port_attr {int dummy; } ;
struct ibv_context {int dummy; } ;


 int ibv_cmd_query_port (struct ibv_context*,int ,struct ibv_port_attr*,struct ibv_query_port*,int) ;

int c4iw_query_port(struct ibv_context *context, uint8_t port,
      struct ibv_port_attr *attr)
{
 struct ibv_query_port cmd;

 return ibv_cmd_query_port(context, port, attr, &cmd, sizeof cmd);
}
