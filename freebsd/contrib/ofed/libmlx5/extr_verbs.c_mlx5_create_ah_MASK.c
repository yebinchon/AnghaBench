#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mlx5_create_ah_resp {int /*<<< orphan*/  dmac; int /*<<< orphan*/  ibv_resp; } ;
struct mlx5_context {int num_ports; scalar_t__* cached_link_layer; int cmds_supp_uhw; } ;
struct ibv_ah {int dummy; } ;
struct TYPE_6__ {int fl_mlid; int stat_rate_sl; int /*<<< orphan*/  rmac; int /*<<< orphan*/  rgid; scalar_t__ grh_gid_fl; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  tclass; void* rlid; } ;
struct mlx5_ah {int kern_ah; struct ibv_ah ibv_ah; TYPE_3__ av; } ;
struct ibv_port_attr {scalar_t__ link_layer; } ;
struct ibv_pd {int /*<<< orphan*/  context; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_5__ {int sgid_index; int flow_label; TYPE_1__ dgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  traffic_class; } ;
struct ibv_ah_attr {int port_num; int src_path_bits; int dlid; int static_rate; int sl; TYPE_2__ grh; scalar_t__ is_global; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ETHERNET_LL_SIZE ; 
 scalar_t__ IBV_GID_TYPE_ROCE_V2 ; 
 scalar_t__ IBV_LINK_LAYER_ETHERNET ; 
 int MLX5_USER_CMDS_SUPP_UHW_CREATE_AH ; 
 int RROCE_UDP_SPORT_MAX ; 
 int RROCE_UDP_SPORT_MIN ; 
 struct mlx5_ah* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ah*) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct ibv_pd*,struct ibv_ah*,struct ibv_ah_attr*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,struct ibv_port_attr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct ibv_ah_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 () ; 
 struct mlx5_context* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

struct ibv_ah *FUNC12(struct ibv_pd *pd, struct ibv_ah_attr *attr)
{
	struct mlx5_context *ctx = FUNC10(pd->context);
	struct ibv_port_attr port_attr;
	struct mlx5_ah *ah;
	uint32_t gid_type;
	uint32_t tmp;
	uint8_t grh;
	int is_eth;

	if (attr->port_num < 1 || attr->port_num > ctx->num_ports)
		return NULL;

	if (ctx->cached_link_layer[attr->port_num - 1]) {
		is_eth = ctx->cached_link_layer[attr->port_num - 1] ==
			IBV_LINK_LAYER_ETHERNET;
	} else {
		if (FUNC6(pd->context, attr->port_num, &port_attr))
			return NULL;

		is_eth = (port_attr.link_layer == IBV_LINK_LAYER_ETHERNET);
	}

	if (FUNC11((!attr->is_global) && is_eth)) {
		errno = EINVAL;
		return NULL;
	}

	ah = FUNC0(1, sizeof *ah);
	if (!ah)
		return NULL;

	if (is_eth) {
		if (FUNC5(pd->context, attr->port_num,
				       attr->grh.sgid_index, &gid_type))
			goto err;

		if (gid_type == IBV_GID_TYPE_ROCE_V2)
			ah->av.rlid = FUNC2(FUNC9() % (RROCE_UDP_SPORT_MAX + 1
						      - RROCE_UDP_SPORT_MIN)
					    + RROCE_UDP_SPORT_MIN);
		/* Since RoCE packets must contain GRH, this bit is reserved
		 * for RoCE and shouldn't be set.
		 */
		grh = 0;
	} else {
		ah->av.fl_mlid = attr->src_path_bits & 0x7f;
		ah->av.rlid = FUNC2(attr->dlid);
		grh = 1;
	}
	ah->av.stat_rate_sl = (attr->static_rate << 4) | attr->sl;
	if (attr->is_global) {
		ah->av.tclass = attr->grh.traffic_class;
		ah->av.hop_limit = attr->grh.hop_limit;
		tmp = FUNC3((grh << 30) |
			    ((attr->grh.sgid_index & 0xff) << 20) |
			    (attr->grh.flow_label & 0xfffff));
		ah->av.grh_gid_fl = tmp;
		FUNC8(ah->av.rgid, attr->grh.dgid.raw, 16);
	}

	if (is_eth) {
		if (ctx->cmds_supp_uhw & MLX5_USER_CMDS_SUPP_UHW_CREATE_AH) {
			struct mlx5_create_ah_resp resp = {};

			if (FUNC4(pd, &ah->ibv_ah, attr, &resp.ibv_resp, sizeof(resp)))
				goto err;

			ah->kern_ah = true;
			FUNC8(ah->av.rmac, resp.dmac, ETHERNET_LL_SIZE);
		} else {
			uint16_t vid;

			if (FUNC7(pd->context, attr,
							ah->av.rmac, &vid))
				goto err;
		}
	}

	return &ah->ibv_ah;
err:
	FUNC1(ah);
	return NULL;
}