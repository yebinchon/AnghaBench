#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ucma_abi_accept {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__* channel; } ;
struct cma_id_private {TYPE_2__ id; int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct ucma_abi_accept*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENODATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_MAX_INIT_DEPTH ; 
 int /*<<< orphan*/  RDMA_MAX_RESP_RES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ucma_abi_accept*,int) ; 

__attribute__((used)) static int FUNC6(struct cma_id_private *id_priv)
{
	struct ucma_abi_accept cmd;
	int ret;

	ret = FUNC3(&id_priv->id, RDMA_MAX_RESP_RES);
	if (ret)
		goto err;

	ret = FUNC4(&id_priv->id, RDMA_MAX_INIT_DEPTH);
	if (ret)
		goto err;

	FUNC0(&cmd, sizeof cmd, ACCEPT);
	cmd.id = id_priv->handle;

	ret = FUNC5(id_priv->id.channel->fd, &cmd, sizeof cmd);
	if (ret != sizeof cmd) {
		ret = (ret >= 0) ? FUNC1(ENODATA) : -1;
		goto err;
	}

	return 0;
err:
	FUNC2(&id_priv->id);
	return ret;
}