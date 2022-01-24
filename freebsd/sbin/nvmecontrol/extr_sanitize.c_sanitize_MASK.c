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
struct nvme_sanitize_status_page {int sstat; int sprog; } ;
struct TYPE_3__ {void* cdw11; void* cdw10; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int /*<<< orphan*/  cpl; TYPE_1__ cmd; } ;
struct nvme_controller_data {int sanicap; int nn; } ;
struct cmd {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  pt ;
struct TYPE_4__ {int owpass; char* dev; int ndas; int oipbp; int ause; int ovrpat; scalar_t__ reportonly; int /*<<< orphan*/ * sanact; } ;

/* Variables and functions */
 int NVME_CTRLR_DATA_SANICAP_BES_MASK ; 
 int NVME_CTRLR_DATA_SANICAP_BES_SHIFT ; 
 int NVME_CTRLR_DATA_SANICAP_CES_MASK ; 
 int NVME_CTRLR_DATA_SANICAP_CES_SHIFT ; 
 int NVME_CTRLR_DATA_SANICAP_OWS_MASK ; 
 int NVME_CTRLR_DATA_SANICAP_OWS_SHIFT ; 
 int /*<<< orphan*/  NVME_GLOBAL_NAMESPACE_TAG ; 
 int /*<<< orphan*/  NVME_LOG_SANITIZE_STATUS ; 
 int /*<<< orphan*/  NVME_OPC_SANITIZE ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
#define  NVME_SS_PAGE_SSTAT_STATUS_COMPLETED 132 
#define  NVME_SS_PAGE_SSTAT_STATUS_COMPLETEDWD 131 
#define  NVME_SS_PAGE_SSTAT_STATUS_FAILED 130 
#define  NVME_SS_PAGE_SSTAT_STATUS_INPROG 129 
 int NVME_SS_PAGE_SSTAT_STATUS_MASK ; 
#define  NVME_SS_PAGE_SSTAT_STATUS_NEVER 128 
 int NVME_SS_PAGE_SSTAT_STATUS_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 scalar_t__ FUNC1 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char**,scalar_t__*) ; 
 void* FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int*,int,int) ; 
 TYPE_2__ opt ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nvme_controller_data*) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvme_sanitize_status_page*,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC20(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_controller_data	cd;
	struct nvme_pt_command		pt;
	struct nvme_sanitize_status_page ss;
	char				*path;
	uint32_t			nsid;
	int				sanact = 0, fd, delay = 1;

	if (FUNC1(argc, argv, f))
		return;

	if (opt.sanact == NULL) {
		if (!opt.reportonly) {
			FUNC7(stderr, "Sanitize Action is not specified\n");
			FUNC0(argc, argv, f);
		}
	} else {
		if (FUNC19(opt.sanact, "exitfailure") == 0)
			sanact = 1;
		else if (FUNC19(opt.sanact, "block") == 0)
			sanact = 2;
		else if (FUNC19(opt.sanact, "overwrite") == 0)
			sanact = 3;
		else if (FUNC19(opt.sanact, "crypto") == 0)
			sanact = 4;
		else {
			FUNC7(stderr, "Incorrect Sanitize Action value\n");
			FUNC0(argc, argv, f);
		}
	}
	if (opt.owpass == 0 || opt.owpass > 16) {
		FUNC7(stderr, "Incorrect Overwrite Pass Count value\n");
		FUNC0(argc, argv, f);
	}

	FUNC14(opt.dev, &fd, 1, 1);
	FUNC9(fd, &path, &nsid);
	if (nsid != 0) {
		FUNC2(fd);
		FUNC14(path, &fd, 1, 1);
	}
	FUNC8(path);

	if (opt.reportonly)
		goto wait;

	/* Check that controller can execute this command. */
	FUNC16(fd, &cd);
	if (((cd.sanicap >> NVME_CTRLR_DATA_SANICAP_BES_SHIFT) &
	     NVME_CTRLR_DATA_SANICAP_BES_MASK) == 0 && sanact == 2)
		FUNC4(1, "controller does not support Block Erase");
	if (((cd.sanicap >> NVME_CTRLR_DATA_SANICAP_OWS_SHIFT) &
	     NVME_CTRLR_DATA_SANICAP_OWS_MASK) == 0 && sanact == 3)
		FUNC4(1, "controller does not support Overwrite");
	if (((cd.sanicap >> NVME_CTRLR_DATA_SANICAP_CES_SHIFT) &
	     NVME_CTRLR_DATA_SANICAP_CES_MASK) == 0 && sanact == 4)
		FUNC4(1, "controller does not support Crypto Erase");

	/*
	 * If controller supports only one namespace, we may sanitize it.
	 * If there can be more, make user explicit in his commands.
	 */
	if (nsid != 0 && cd.nn > 1)
		FUNC4(1, "can't sanitize one of namespaces, specify controller");

	FUNC12(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_SANITIZE;
	pt.cmd.cdw10 = FUNC10((opt.ndas << 9) | (opt.oipbp << 8) |
	    ((opt.owpass & 0xf) << 4) | (opt.ause << 3) | sanact);
	pt.cmd.cdw11 = FUNC10(opt.ovrpat);

	if (FUNC11(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC3(1, "sanitize request failed");

	if (FUNC13(&pt.cpl))
		FUNC4(1, "sanitize request returned error");

wait:
	FUNC17(fd, NVME_LOG_SANITIZE_STATUS,
	    NVME_GLOBAL_NAMESPACE_TAG, 0, 0, 0, &ss, sizeof(ss));
	switch ((ss.sstat >> NVME_SS_PAGE_SSTAT_STATUS_SHIFT) &
	    NVME_SS_PAGE_SSTAT_STATUS_MASK) {
	case NVME_SS_PAGE_SSTAT_STATUS_NEVER:
		FUNC15("Never sanitized");
		break;
	case NVME_SS_PAGE_SSTAT_STATUS_COMPLETED:
		FUNC15("Sanitize completed");
		break;
	case NVME_SS_PAGE_SSTAT_STATUS_INPROG:
		FUNC15("Sanitize in progress: %u%% (%u/65535)\r",
		    (ss.sprog * 100 + 32768) / 65536, ss.sprog);
		FUNC6(stdout);
		if (delay < 16)
			delay++;
		FUNC18(delay);
		goto wait;
	case NVME_SS_PAGE_SSTAT_STATUS_FAILED:
		FUNC15("Sanitize failed");
		break;
	case NVME_SS_PAGE_SSTAT_STATUS_COMPLETEDWD:
		FUNC15("Sanitize completed with deallocation");
		break;
	default:
		FUNC15("Sanitize status unknown");
		break;
	}
	if (delay > 1)
		FUNC15("                       ");
	FUNC15("\n");

	FUNC2(fd);
	FUNC5(0);
}