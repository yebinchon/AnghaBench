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
typedef  void* uint8_t ;
struct ibv_port_attr {int /*<<< orphan*/  link_layer; } ;
struct ibv_device_attr {int phys_port_cnt; scalar_t__ max_qp_rd_atom; scalar_t__ max_qp_init_rd_atom; int /*<<< orphan*/  max_qp_wr; } ;
struct cma_device {int port_cnt; int /*<<< orphan*/ * verbs; void* max_responder_resources; void* max_initiator_depth; int /*<<< orphan*/  max_qpsize; TYPE_1__* port; int /*<<< orphan*/  guid; } ;
struct TYPE_2__ {int /*<<< orphan*/  link_layer; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IBV_LINK_LAYER_UNSPECIFIED ; 
 int /*<<< orphan*/  cma_init_cnt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ibv_device_attr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,struct ibv_port_attr*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cma_device *cma_dev)
{
	struct ibv_port_attr port_attr;
	struct ibv_device_attr attr;
	int i, ret;

	if (cma_dev->verbs)
		return 0;

	cma_dev->verbs = FUNC5(cma_dev->guid);
	if (!cma_dev->verbs)
		return FUNC0(ENODEV);

	ret = FUNC2(cma_dev->verbs, &attr);
	if (ret) {
		ret = FUNC0(ret);
		goto err;
	}

	cma_dev->port = FUNC4(sizeof(*cma_dev->port) * attr.phys_port_cnt);
	if (!cma_dev->port) {
		ret = FUNC0(ENOMEM);
		goto err;
	}

	for (i = 1; i <= attr.phys_port_cnt; i++) {
		if (FUNC3(cma_dev->verbs, i, &port_attr))
			cma_dev->port[i - 1].link_layer = IBV_LINK_LAYER_UNSPECIFIED;
		else
			cma_dev->port[i - 1].link_layer = port_attr.link_layer;
	}

	cma_dev->port_cnt = attr.phys_port_cnt;
	cma_dev->max_qpsize = attr.max_qp_wr;
	cma_dev->max_initiator_depth = (uint8_t) attr.max_qp_init_rd_atom;
	cma_dev->max_responder_resources = (uint8_t) attr.max_qp_rd_atom;
	cma_init_cnt++;
	return 0;

err:
	FUNC1(cma_dev->verbs);
	cma_dev->verbs = NULL;
	return ret;
}