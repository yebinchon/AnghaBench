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
struct ib_ucm_sidr_rep {uintptr_t data; uintptr_t info; scalar_t__ info_len; scalar_t__ data_len; int /*<<< orphan*/  status; int /*<<< orphan*/  qkey; int /*<<< orphan*/  qpn; int /*<<< orphan*/  id; } ;
struct ib_cm_sidr_rep_param {scalar_t__ info_length; scalar_t__ info; scalar_t__ private_data_len; scalar_t__ private_data; int /*<<< orphan*/  status; int /*<<< orphan*/  qkey; int /*<<< orphan*/  qp_num; } ;
struct ib_cm_id {TYPE_1__* device; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct ib_ucm_sidr_rep*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_USER_CM_CMD_SEND_SIDR_REP ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC3(struct ib_cm_id *cm_id,
			struct ib_cm_sidr_rep_param *param)
{
	struct ib_ucm_sidr_rep *cmd;
	void *msg;
	int result;
	int size;

	if (!param)
		return FUNC1(EINVAL);

	FUNC0(msg, cmd, IB_USER_CM_CMD_SEND_SIDR_REP, size);
	cmd->id     = cm_id->handle;
	cmd->qpn    = param->qp_num;
	cmd->qkey   = param->qkey;
	cmd->status = param->status;

	if (param->private_data && param->private_data_len) {
		cmd->data     = (uintptr_t) param->private_data;
		cmd->data_len = param->private_data_len;
	}

	if (param->info && param->info_length) {
		cmd->info     = (uintptr_t) param->info;
		cmd->info_len = param->info_length;
	}

	result = FUNC2(cm_id->device->fd, msg, size);
	if (result != size)
		return (result >= 0) ? FUNC1(ENODATA) : -1;

	return 0;
}