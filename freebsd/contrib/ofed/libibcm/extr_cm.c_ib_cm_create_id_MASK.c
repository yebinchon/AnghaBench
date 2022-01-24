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
struct ib_ucm_create_id_resp {int /*<<< orphan*/  id; } ;
struct ib_ucm_create_id {uintptr_t uid; } ;
struct ib_cm_id {int /*<<< orphan*/  handle; } ;
struct ib_cm_device {int /*<<< orphan*/  fd; } ;
struct cm_id_private {struct ib_cm_id id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct ib_ucm_create_id*,struct ib_ucm_create_id_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_USER_CM_CMD_CREATE_ID ; 
 int /*<<< orphan*/  FUNC2 (struct ib_ucm_create_id_resp*,int) ; 
 struct cm_id_private* FUNC3 (struct ib_cm_device*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_id_private*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC6(struct ib_cm_device *device,
		    struct ib_cm_id **cm_id, void *context)
{
	struct ib_ucm_create_id_resp *resp;
	struct ib_ucm_create_id *cmd;
	struct cm_id_private *cm_id_priv;
	void *msg;
	int result;
	int size;

	cm_id_priv = FUNC3(device, context);
	if (!cm_id_priv)
		return FUNC1(ENOMEM);

	FUNC0(msg, cmd, resp, IB_USER_CM_CMD_CREATE_ID, size);
	cmd->uid = (uintptr_t) cm_id_priv;

	result = FUNC5(device->fd, msg, size);
	if (result != size)
		goto err;

	FUNC2(resp, sizeof *resp);

	cm_id_priv->id.handle = resp->id;
	*cm_id = &cm_id_priv->id;
	return 0;

err:	FUNC4(cm_id_priv);
	return result;
}