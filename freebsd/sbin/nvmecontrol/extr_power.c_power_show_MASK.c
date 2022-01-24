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
struct TYPE_4__ {int cdw0; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {TYPE_2__ cpl; TYPE_1__ cmd; } ;
typedef  int /*<<< orphan*/  pt ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_FEAT_POWER_MANAGEMENT ; 
 int /*<<< orphan*/  NVME_OPC_GET_FEATURES ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7(int fd)
{
	struct nvme_pt_command	pt;

	FUNC4(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_GET_FEATURES;
	pt.cmd.cdw10 = FUNC2(NVME_FEAT_POWER_MANAGEMENT);

	if (FUNC3(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC0(1, "set feature power mgmt request failed");

	if (FUNC5(&pt.cpl))
		FUNC1(1, "set feature power mgmt request returned error");

	FUNC6("Current Power Mode is %d\n", pt.cpl.cdw0);
}