#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct mlx4_context {TYPE_1__* port_query_cache; } ;
struct ibv_port_attr {int /*<<< orphan*/  port_cap_flags; int /*<<< orphan*/  link_layer; } ;
struct ibv_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  caps; int /*<<< orphan*/  link_layer; scalar_t__ valid; } ;

/* Variables and functions */
 int EINVAL ; 
 int MLX4_PORTS_NUM ; 
 int FUNC0 (struct ibv_context*,int,struct ibv_port_attr*) ; 
 struct mlx4_context* FUNC1 (struct ibv_context*) ; 

__attribute__((used)) static int FUNC2(struct ibv_context *context, uint8_t port_num,
			    struct ibv_port_attr *port_attr)
{
	struct mlx4_context *mctx = FUNC1(context);
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
	return FUNC0(context, port_num,
			       (struct ibv_port_attr *)port_attr);

}