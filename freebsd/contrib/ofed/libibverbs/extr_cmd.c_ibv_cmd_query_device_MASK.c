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
typedef  int /*<<< orphan*/  uint64_t ;
struct ibv_query_device_resp {int dummy; } ;
struct ibv_query_device {int dummy; } ;
struct ibv_device_attr {int /*<<< orphan*/  fw_ver; } ;
struct ibv_context {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_query_device*,size_t,int /*<<< orphan*/ ,struct ibv_query_device_resp*,int) ; 
 int /*<<< orphan*/  QUERY_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_query_device_resp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ibv_device_attr*,struct ibv_query_device_resp*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,struct ibv_query_device*,size_t) ; 

int FUNC5(struct ibv_context *context,
			 struct ibv_device_attr *device_attr,
			 uint64_t *raw_fw_ver,
			 struct ibv_query_device *cmd, size_t cmd_size)
{
	struct ibv_query_device_resp resp;

	FUNC0(cmd, cmd_size, QUERY_DEVICE, &resp, sizeof resp);

	if (FUNC4(context->cmd_fd, cmd, cmd_size) != cmd_size)
		return errno;

	(void) FUNC1(&resp, sizeof resp);

	FUNC3(device_attr->fw_ver, 0, sizeof device_attr->fw_ver);
	FUNC2(device_attr, &resp, raw_fw_ver);

	return 0;
}