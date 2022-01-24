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
union ibv_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ibv_qp {TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct ibv_detach_mcast {scalar_t__ reserved; int /*<<< orphan*/  mlid; int /*<<< orphan*/  qp_handle; int /*<<< orphan*/  gid; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DETACH_MCAST ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_detach_mcast*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ibv_detach_mcast*,int) ; 

int FUNC3(struct ibv_qp *qp, const union ibv_gid *gid, uint16_t lid)
{
	struct ibv_detach_mcast cmd;

	FUNC0(&cmd, sizeof cmd, DETACH_MCAST);
	FUNC1(cmd.gid, gid->raw, sizeof cmd.gid);
	cmd.qp_handle = qp->handle;
	cmd.mlid      = lid;
	cmd.reserved  = 0;

	if (FUNC2(qp->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
		return errno;

	return 0;
}