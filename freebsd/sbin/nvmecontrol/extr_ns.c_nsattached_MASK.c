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
struct TYPE_3__ {void* cdw10; void* nsid; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int len; int is_read; int /*<<< orphan*/  cpl; int /*<<< orphan*/ * buf; TYPE_1__ cmd; } ;
struct nvme_controller_data {int oacs; } ;
struct cmd {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;
typedef  int /*<<< orphan*/  clist ;
struct TYPE_4__ {scalar_t__ nsid; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NONE ; 
 int NVME_CTRLR_DATA_OACS_NSMGMT_MASK ; 
 int NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT ; 
 int /*<<< orphan*/  NVME_OPC_IDENTIFY ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 scalar_t__ FUNC1 (int,char**,struct cmd const*) ; 
 TYPE_2__ attached_opt ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nvme_controller_data*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC14(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_pt_command	pt;
	struct nvme_controller_data cd;
	int	fd, i, n;
	uint16_t clist[2048];

	if (FUNC1(argc, argv, f))
		return;
	if (attached_opt.nsid == NONE) {
		FUNC5(stderr, "No valid NSID specified\n");
		FUNC0(argc, argv, f);
	}
	FUNC11(attached_opt.dev, &fd, 1, 1);
	FUNC13(fd, &cd);

	/* Check that controller can execute this command. */
	if (((cd.oacs >> NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT) &
	    NVME_CTRLR_DATA_OACS_NSMGMT_MASK) == 0)
		FUNC3(1, "controller does not support namespace management");

	FUNC9(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_IDENTIFY;
	pt.cmd.nsid = FUNC6(attached_opt.nsid);
	pt.cmd.cdw10 = FUNC6(0x12);
	pt.buf = clist;
	pt.len = sizeof(clist);
	pt.is_read = 1;
	if (FUNC7(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC2(1, "identify request failed");
	if (FUNC10(&pt.cpl))
		FUNC3(1, "identify request returned error");

	n = FUNC8(clist[0]);
	FUNC12("Attached %d controller(s):\n", n);
	for (i = 0; i < n; i++)
		FUNC12("  0x%04x\n", FUNC8(clist[i + 1]));

	FUNC4(0);
}