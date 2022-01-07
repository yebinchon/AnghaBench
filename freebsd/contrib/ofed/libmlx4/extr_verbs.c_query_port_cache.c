
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mlx4_context {TYPE_1__* port_query_cache; } ;
struct ibv_port_attr {int port_cap_flags; int link_layer; } ;
struct ibv_context {int dummy; } ;
struct TYPE_2__ {int caps; int link_layer; scalar_t__ valid; } ;


 int EINVAL ;
 int MLX4_PORTS_NUM ;
 int mlx4_query_port (struct ibv_context*,int,struct ibv_port_attr*) ;
 struct mlx4_context* to_mctx (struct ibv_context*) ;

__attribute__((used)) static int query_port_cache(struct ibv_context *context, uint8_t port_num,
       struct ibv_port_attr *port_attr)
{
 struct mlx4_context *mctx = to_mctx(context);
 if (port_num <= 0 || port_num > MLX4_PORTS_NUM)
  return -EINVAL;
 if (mctx->port_query_cache[port_num - 1].valid) {
  port_attr->link_layer =
   mctx->
   port_query_cache[port_num - 1].
   link_layer;
  port_attr->port_cap_flags =
   mctx->
   port_query_cache[port_num - 1].
   caps;
  return 0;
 }
 return mlx4_query_port(context, port_num,
          (struct ibv_port_attr *)port_attr);

}
