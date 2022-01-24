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
struct TYPE_2__ {int /*<<< orphan*/  cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int len; int is_read; int /*<<< orphan*/  cpl; struct nvme_controller_data* buf; TYPE_1__ cmd; } ;
struct nvme_controller_data {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_OPC_IDENTIFY ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_controller_data*) ; 

void
FUNC7(int fd, struct nvme_controller_data *cdata)
{
	struct nvme_pt_command	pt;

	FUNC4(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_IDENTIFY;
	pt.cmd.cdw10 = FUNC2(1);
	pt.buf = cdata;
	pt.len = sizeof(*cdata);
	pt.is_read = 1;

	if (FUNC3(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC0(1, "identify request failed");

	/* Convert data to host endian */
	FUNC6(cdata);

	if (FUNC5(&pt.cpl))
		FUNC1(1, "identify request returned error");
}