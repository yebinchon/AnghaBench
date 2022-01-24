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
typedef  scalar_t__ uint8_t ;
typedef  int u_int ;
struct TYPE_3__ {void* cdw10; void* nsid; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int len; int is_read; int /*<<< orphan*/  cpl; struct nvme_namespace_data* buf; TYPE_1__ cmd; } ;
struct nvme_namespace_data {int dummy; } ;
struct nvme_controller_data {int oacs; } ;
struct cmd {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;
typedef  int /*<<< orphan*/  nsdata ;
struct TYPE_4__ {scalar_t__ nsid; int /*<<< orphan*/  verbose; scalar_t__ hex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NONE ; 
 int NVME_CTRLR_DATA_OACS_NSMGMT_MASK ; 
 int NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT ; 
 int /*<<< orphan*/  NVME_OPC_IDENTIFY ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 scalar_t__ FUNC1 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (int) ; 
 TYPE_2__ identify_opt ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_namespace_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nvme_namespace_data*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nvme_namespace_data*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nvme_controller_data*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC16(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_pt_command	pt;
	struct nvme_controller_data cd;
	struct nvme_namespace_data nsdata;
	uint8_t	*data;
	int	fd;
	u_int	i;

	if (FUNC1(argc, argv, f))
		return;
	if (identify_opt.nsid == NONE) {
		FUNC6(stderr, "No valid NSID specified\n");
		FUNC0(argc, argv, f);
	}
	FUNC12(identify_opt.dev, &fd, 1, 1);
	FUNC15(fd, &cd);

	/* Check that controller can execute this command. */
	if (((cd.oacs >> NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT) &
	    NVME_CTRLR_DATA_OACS_NSMGMT_MASK) == 0)
		FUNC4(1, "controller does not support namespace management");

	FUNC9(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_IDENTIFY;
	pt.cmd.nsid = FUNC7(identify_opt.nsid);
	pt.cmd.cdw10 = FUNC7(0x11);
	pt.buf = &nsdata;
	pt.len = sizeof(nsdata);
	pt.is_read = 1;

	if (FUNC8(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC3(1, "identify request failed");

	if (FUNC10(&pt.cpl))
		FUNC4(1, "identify request returned error");

	FUNC2(fd);

	data = (uint8_t *)&nsdata;
	for (i = 0; i < sizeof(nsdata); i++) {
		if (data[i] != 0)
			break;
	}
	if (i == sizeof(nsdata))
		FUNC4(1, "namespace %d is not allocated", identify_opt.nsid);

	/* Convert data to host endian */
	FUNC11(&nsdata);

	if (identify_opt.hex) {
		i = sizeof(struct nvme_namespace_data);
		if (!identify_opt.verbose) {
			for (; i > 384; i--) {
				if (data[i - 1] != 0)
					break;
			}
		}
		FUNC13(&nsdata, i);
		FUNC5(0);
	}

	FUNC14(&nsdata);
	FUNC5(0);
}