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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {void* cdw10; void* nsid; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int len; int is_read; int /*<<< orphan*/  cpl; struct nvme_namespace_data* buf; TYPE_1__ cmd; } ;
struct nvme_namespace_data {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_OPC_IDENTIFY ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_namespace_data*) ; 

void
FUNC7(int fd, uint32_t nsid, struct nvme_namespace_data *nsdata)
{
	struct nvme_pt_command	pt;

	FUNC4(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_IDENTIFY;
	pt.cmd.nsid = FUNC2(nsid);
	pt.cmd.cdw10 = FUNC2(0);
	pt.buf = nsdata;
	pt.len = sizeof(*nsdata);
	pt.is_read = 1;

	if (FUNC3(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC0(1, "identify request failed");

	/* Convert data to host endian */
	FUNC6(nsdata);

	if (FUNC5(&pt.cpl))
		FUNC1(1, "identify request returned error");
}