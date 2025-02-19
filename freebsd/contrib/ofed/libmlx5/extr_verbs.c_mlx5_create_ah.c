
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct mlx5_create_ah_resp {int dmac; int ibv_resp; } ;
struct mlx5_context {int num_ports; scalar_t__* cached_link_layer; int cmds_supp_uhw; } ;
struct ibv_ah {int dummy; } ;
struct TYPE_6__ {int fl_mlid; int stat_rate_sl; int rmac; int rgid; scalar_t__ grh_gid_fl; int hop_limit; int tclass; void* rlid; } ;
struct mlx5_ah {int kern_ah; struct ibv_ah ibv_ah; TYPE_3__ av; } ;
struct ibv_port_attr {scalar_t__ link_layer; } ;
struct ibv_pd {int context; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {int sgid_index; int flow_label; TYPE_1__ dgid; int hop_limit; int traffic_class; } ;
struct ibv_ah_attr {int port_num; int src_path_bits; int dlid; int static_rate; int sl; TYPE_2__ grh; scalar_t__ is_global; } ;
typedef int resp ;


 int EINVAL ;
 int ETHERNET_LL_SIZE ;
 scalar_t__ IBV_GID_TYPE_ROCE_V2 ;
 scalar_t__ IBV_LINK_LAYER_ETHERNET ;
 int MLX5_USER_CMDS_SUPP_UHW_CREATE_AH ;
 int RROCE_UDP_SPORT_MAX ;
 int RROCE_UDP_SPORT_MIN ;
 struct mlx5_ah* calloc (int,int) ;
 int errno ;
 int free (struct mlx5_ah*) ;
 void* htobe16 (int) ;
 scalar_t__ htobe32 (int) ;
 scalar_t__ ibv_cmd_create_ah (struct ibv_pd*,struct ibv_ah*,struct ibv_ah_attr*,int *,int) ;
 scalar_t__ ibv_query_gid_type (int ,int,int,scalar_t__*) ;
 scalar_t__ ibv_query_port (int ,int,struct ibv_port_attr*) ;
 scalar_t__ ibv_resolve_eth_l2_from_gid (int ,struct ibv_ah_attr*,int ,int *) ;
 int memcpy (int ,int ,int) ;
 int rand () ;
 struct mlx5_context* to_mctx (int ) ;
 scalar_t__ unlikely (int) ;

struct ibv_ah *mlx5_create_ah(struct ibv_pd *pd, struct ibv_ah_attr *attr)
{
 struct mlx5_context *ctx = to_mctx(pd->context);
 struct ibv_port_attr port_attr;
 struct mlx5_ah *ah;
 uint32_t gid_type;
 uint32_t tmp;
 uint8_t grh;
 int is_eth;

 if (attr->port_num < 1 || attr->port_num > ctx->num_ports)
  return ((void*)0);

 if (ctx->cached_link_layer[attr->port_num - 1]) {
  is_eth = ctx->cached_link_layer[attr->port_num - 1] ==
   IBV_LINK_LAYER_ETHERNET;
 } else {
  if (ibv_query_port(pd->context, attr->port_num, &port_attr))
   return ((void*)0);

  is_eth = (port_attr.link_layer == IBV_LINK_LAYER_ETHERNET);
 }

 if (unlikely((!attr->is_global) && is_eth)) {
  errno = EINVAL;
  return ((void*)0);
 }

 ah = calloc(1, sizeof *ah);
 if (!ah)
  return ((void*)0);

 if (is_eth) {
  if (ibv_query_gid_type(pd->context, attr->port_num,
           attr->grh.sgid_index, &gid_type))
   goto err;

  if (gid_type == IBV_GID_TYPE_ROCE_V2)
   ah->av.rlid = htobe16(rand() % (RROCE_UDP_SPORT_MAX + 1
            - RROCE_UDP_SPORT_MIN)
         + RROCE_UDP_SPORT_MIN);



  grh = 0;
 } else {
  ah->av.fl_mlid = attr->src_path_bits & 0x7f;
  ah->av.rlid = htobe16(attr->dlid);
  grh = 1;
 }
 ah->av.stat_rate_sl = (attr->static_rate << 4) | attr->sl;
 if (attr->is_global) {
  ah->av.tclass = attr->grh.traffic_class;
  ah->av.hop_limit = attr->grh.hop_limit;
  tmp = htobe32((grh << 30) |
       ((attr->grh.sgid_index & 0xff) << 20) |
       (attr->grh.flow_label & 0xfffff));
  ah->av.grh_gid_fl = tmp;
  memcpy(ah->av.rgid, attr->grh.dgid.raw, 16);
 }

 if (is_eth) {
  if (ctx->cmds_supp_uhw & MLX5_USER_CMDS_SUPP_UHW_CREATE_AH) {
   struct mlx5_create_ah_resp resp = {};

   if (ibv_cmd_create_ah(pd, &ah->ibv_ah, attr, &resp.ibv_resp, sizeof(resp)))
    goto err;

   ah->kern_ah = 1;
   memcpy(ah->av.rmac, resp.dmac, ETHERNET_LL_SIZE);
  } else {
   uint16_t vid;

   if (ibv_resolve_eth_l2_from_gid(pd->context, attr,
       ah->av.rmac, &vid))
    goto err;
  }
 }

 return &ah->ibv_ah;
err:
 free(ah);
 return ((void*)0);
}
