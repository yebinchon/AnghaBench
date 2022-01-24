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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {void* cdw10; void* nsid; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {scalar_t__* buf; int len; int is_read; int /*<<< orphan*/  cpl; TYPE_1__ cmd; } ;
struct nvme_controller_data {int oacs; } ;
struct cmd {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NVME_CTRLR_DATA_OACS_NSMGMT_MASK ; 
 int NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT ; 
 int /*<<< orphan*/  NVME_OPC_IDENTIFY ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 TYPE_2__ active_opt ; 
 scalar_t__ FUNC0 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nvme_controller_data*) ; 

__attribute__((used)) static void
FUNC12(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_pt_command	pt;
	struct nvme_controller_data cd;
	int	fd, i;
	uint32_t list[1024];

	if (FUNC0(argc, argv, f))
		return;
	FUNC9(active_opt.dev, &fd, 1, 1);
	FUNC11(fd, &cd);

	/* Check that controller can execute this command. */
	if (((cd.oacs >> NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT) &
	    NVME_CTRLR_DATA_OACS_NSMGMT_MASK) == 0)
		FUNC2(1, "controller does not support namespace management");

	FUNC7(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_IDENTIFY;
	pt.cmd.nsid = FUNC4(0);
	pt.cmd.cdw10 = FUNC4(0x10);
	pt.buf = list;
	pt.len = sizeof(list);
	pt.is_read = 1;
	if (FUNC5(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC1(1, "identify request failed");
	if (FUNC8(&pt.cpl))
		FUNC2(1, "identify request returned error");

	FUNC10("Allocated namespaces:\n");
	for (i = 0; list[i] != 0; i++)
		FUNC10("%10d\n", FUNC6(list[i]));

	FUNC3(0);
}