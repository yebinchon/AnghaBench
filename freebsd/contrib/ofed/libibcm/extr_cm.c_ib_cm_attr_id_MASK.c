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
struct ib_ucm_attr_id_resp {int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; int /*<<< orphan*/  service_mask; int /*<<< orphan*/  service_id; } ;
struct ib_ucm_attr_id {int /*<<< orphan*/  id; } ;
struct ib_cm_id {TYPE_1__* device; int /*<<< orphan*/  handle; } ;
struct ib_cm_attr_param {int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; int /*<<< orphan*/  service_mask; int /*<<< orphan*/  service_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct ib_ucm_attr_id*,struct ib_ucm_attr_id_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_USER_CM_CMD_ATTR_ID ; 
 int /*<<< orphan*/  FUNC2 (struct ib_ucm_attr_id_resp*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC4(struct ib_cm_id *cm_id, struct ib_cm_attr_param *param)
{
	struct ib_ucm_attr_id_resp *resp;
	struct ib_ucm_attr_id *cmd;
	void *msg;
	int result;
	int size;

	if (!param)
		return FUNC1(EINVAL);

	FUNC0(msg, cmd, resp, IB_USER_CM_CMD_ATTR_ID, size);
	cmd->id = cm_id->handle;

	result = FUNC3(cm_id->device->fd, msg, size);
	if (result != size)
		return (result >= 0) ? FUNC1(ENODATA) : -1;

	FUNC2(resp, sizeof *resp);

	param->service_id   = resp->service_id;
	param->service_mask = resp->service_mask;
	param->local_id     = resp->local_id;
	param->remote_id    = resp->remote_id;
	return 0;
}