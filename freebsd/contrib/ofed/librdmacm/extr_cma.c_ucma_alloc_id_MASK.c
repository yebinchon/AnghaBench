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
struct rdma_event_channel {int dummy; } ;
struct TYPE_2__ {int ps; int qp_type; struct rdma_event_channel* channel; void* context; } ;
struct cma_id_private {int handle; int sync; int /*<<< orphan*/  cond; int /*<<< orphan*/  mut; TYPE_1__ id; } ;
typedef  enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;
typedef  enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;

/* Variables and functions */
 struct cma_id_private* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rdma_event_channel* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cma_id_private*) ; 

__attribute__((used)) static struct cma_id_private *FUNC5(struct rdma_event_channel *channel,
					    void *context,
					    enum rdma_port_space ps,
					    enum ibv_qp_type qp_type)
{
	struct cma_id_private *id_priv;

	id_priv = FUNC0(1, sizeof(*id_priv));
	if (!id_priv)
		return NULL;

	id_priv->id.context = context;
	id_priv->id.ps = ps;
	id_priv->id.qp_type = qp_type;
	id_priv->handle = 0xFFFFFFFF;

	if (!channel) {
		id_priv->id.channel = FUNC3();
		if (!id_priv->id.channel)
			goto err;
		id_priv->sync = 1;
	} else {
		id_priv->id.channel = channel;
	}

	FUNC2(&id_priv->mut, NULL);
	if (FUNC1(&id_priv->cond, NULL))
		goto err;

	return id_priv;

err:	FUNC4(id_priv);
	return NULL;
}