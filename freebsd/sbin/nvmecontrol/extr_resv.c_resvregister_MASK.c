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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int len; int /*<<< orphan*/  cpl; scalar_t__ is_read; int /*<<< orphan*/ ** buf; TYPE_1__ cmd; } ;
struct cmd {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_4__ {int rrega; int iekey; int cptpl; int /*<<< orphan*/  nrkey; int /*<<< orphan*/  crkey; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_OPC_RESERVATION_REGISTER ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 scalar_t__ FUNC1 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int,int) ; 
 TYPE_2__ register_opt ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC14(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_pt_command	pt;
	uint64_t	data[2];
	int		fd;
	uint32_t	nsid;

	if (FUNC1(argc, argv, f))
		return;
	FUNC13(register_opt.dev, &fd, 1, 1);
	FUNC7(fd, NULL, &nsid);
	if (nsid == 0) {
		FUNC6(stderr, "This command require namespace-id\n");
		FUNC0(argc, argv, f);
	}

	data[0] = FUNC9(register_opt.crkey);
	data[1] = FUNC9(register_opt.nrkey);

	FUNC11(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_RESERVATION_REGISTER;
	pt.cmd.cdw10 = FUNC8((register_opt.rrega & 7) |
	    (register_opt.iekey << 3) | (register_opt.cptpl << 30));
	pt.buf = &data;
	pt.len = sizeof(data);
	pt.is_read = 0;

	if (FUNC10(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC3(1, "register request failed");

	if (FUNC12(&pt.cpl))
		FUNC4(1, "register request returned error");

	FUNC2(fd);
	FUNC5(0);
}