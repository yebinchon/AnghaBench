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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int len; int is_read; int /*<<< orphan*/  cpl; int /*<<< orphan*/ * buf; TYPE_1__ cmd; } ;
struct nvme_controller_data {int oacs; } ;
struct cmd {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;
typedef  int /*<<< orphan*/  clist ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NVME_CTRLR_DATA_OACS_NSMGMT_MASK ; 
 int NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT ; 
 int /*<<< orphan*/  NVME_OPC_IDENTIFY ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 scalar_t__ FUNC0 (int,char**,struct cmd const*) ; 
 TYPE_2__ controllers_opt ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nvme_controller_data*) ; 

__attribute__((used)) static void
FUNC12(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_pt_command	pt;
	struct nvme_controller_data cd;
	int	fd, i, n;
	uint16_t clist[2048];

	if (FUNC0(argc, argv, f))
		return;
	FUNC9(controllers_opt.dev, &fd, 1, 1);
	FUNC11(fd, &cd);

	/* Check that controller can execute this command. */
	if (((cd.oacs >> NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT) &
	    NVME_CTRLR_DATA_OACS_NSMGMT_MASK) == 0)
		FUNC2(1, "controller does not support namespace management");

	FUNC7(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_IDENTIFY;
	pt.cmd.cdw10 = FUNC4(0x13);
	pt.buf = clist;
	pt.len = sizeof(clist);
	pt.is_read = 1;
	if (FUNC5(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC1(1, "identify request failed");
	if (FUNC8(&pt.cpl))
		FUNC2(1, "identify request returned error");

	n = FUNC6(clist[0]);
	FUNC10("NVM subsystem includes %d controller(s):\n", n);
	for (i = 0; i < n; i++)
		FUNC10("  0x%04x\n", FUNC6(clist[i + 1]));

	FUNC3(0);
}