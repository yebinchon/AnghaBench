#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* context; } ;
struct verbs_xrcd {TYPE_2__ xrcd; int /*<<< orphan*/  handle; } ;
struct ibv_close_xrcd {int /*<<< orphan*/  xrcd_handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_XRCD ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_close_xrcd*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ibv_close_xrcd*,int) ; 

int FUNC2(struct verbs_xrcd *xrcd)
{
	struct ibv_close_xrcd cmd;

	FUNC0(&cmd, sizeof cmd, CLOSE_XRCD);
	cmd.xrcd_handle = xrcd->handle;

	if (FUNC1(xrcd->xrcd.context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
		return errno;

	return 0;
}