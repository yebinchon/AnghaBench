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
struct ib_user_path_rec {int dummy; } ;
struct ib_ucm_sidr_req {uintptr_t path; uintptr_t data; scalar_t__ len; int /*<<< orphan*/  max_cm_retries; int /*<<< orphan*/  timeout; int /*<<< orphan*/  sid; int /*<<< orphan*/  id; } ;
struct ib_cm_sidr_req_param {scalar_t__ private_data_len; scalar_t__ private_data; int /*<<< orphan*/  path; int /*<<< orphan*/  max_cm_retries; int /*<<< orphan*/  timeout_ms; int /*<<< orphan*/  service_id; } ;
struct ib_cm_id {TYPE_1__* device; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct ib_ucm_sidr_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_USER_CM_CMD_SEND_SIDR_REQ ; 
 int /*<<< orphan*/  FUNC2 (struct ib_user_path_rec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC4(struct ib_cm_id *cm_id,
			struct ib_cm_sidr_req_param *param)
{
	struct ib_user_path_rec abi_path;
	struct ib_ucm_sidr_req *cmd;
	void *msg;
	int result;
	int size;

	if (!param || !param->path)
		return FUNC1(EINVAL);

	FUNC0(msg, cmd, IB_USER_CM_CMD_SEND_SIDR_REQ, size);
	cmd->id             = cm_id->handle;
	cmd->sid            = param->service_id;
	cmd->timeout        = param->timeout_ms;
	cmd->max_cm_retries = param->max_cm_retries;

	FUNC2(&abi_path, param->path);
	cmd->path = (uintptr_t) &abi_path;

	if (param->private_data && param->private_data_len) {
		cmd->data = (uintptr_t) param->private_data;
		cmd->len  = param->private_data_len;
	}

	result = FUNC3(cm_id->device->fd, msg, size);
	if (result != size)
		return (result >= 0) ? FUNC1(ENODATA) : result;

	return 0;
}