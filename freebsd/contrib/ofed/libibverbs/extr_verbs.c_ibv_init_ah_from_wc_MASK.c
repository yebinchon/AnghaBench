#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ip {int dummy; } ;
struct ibv_wc {int wc_flags; } ;
struct ibv_grh {int dummy; } ;
struct ibv_context {int dummy; } ;
struct ibv_ah_attr {int is_global; } ;

/* Variables and functions */
 int IBV_WC_GRH ; 
 int FUNC0 (struct ibv_grh*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ibv_context*,struct ibv_ah_attr*,struct ip*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ibv_context*,struct ibv_ah_attr*,struct ibv_grh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibv_ah_attr*,struct ibv_wc*,struct ibv_grh*,int /*<<< orphan*/ ) ; 

int FUNC5(struct ibv_context *context, uint8_t port_num,
			struct ibv_wc *wc, struct ibv_grh *grh,
			struct ibv_ah_attr *ah_attr)
{
	int version;
	int ret = 0;

	FUNC1(ah_attr, 0, sizeof *ah_attr);
	FUNC4(ah_attr, wc, grh, port_num);

	if (wc->wc_flags & IBV_WC_GRH) {
		ah_attr->is_global = 1;
		version = FUNC0(grh);

		if (version == 4)
			ret = FUNC2(context, ah_attr,
						  (struct ip *)((void *)grh + 20),
						  port_num);
		else if (version == 6)
			ret = FUNC3(context, ah_attr, grh,
						  port_num);
		else
			ret = -1;
	}

	return ret;
}