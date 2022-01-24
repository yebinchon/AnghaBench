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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int ;
struct nvme_sanitize_status_page {int dummy; } ;
struct nvme_res_notification_page {int dummy; } ;
struct TYPE_2__ {scalar_t__ cdw14; scalar_t__ cdw13; scalar_t__ cdw12; void* cdw11; void* cdw10; void* nsid; int /*<<< orphan*/  opc; } ;
struct nvme_pt_command {int len; int is_read; int /*<<< orphan*/  cpl; void* buf; TYPE_1__ cmd; } ;
struct nvme_ns_list {int dummy; } ;
struct nvme_health_information_page {int dummy; } ;
struct nvme_firmware_page {int dummy; } ;
struct nvme_error_information_entry {int dummy; } ;
struct nvme_command_effects_page {int dummy; } ;
struct intel_log_temp_stats {int dummy; } ;
typedef  int /*<<< orphan*/  pt ;

/* Variables and functions */
#define  INTEL_LOG_TEMP_STATS 135 
#define  NVME_LOG_CHANGED_NAMESPACE 134 
#define  NVME_LOG_COMMAND_EFFECT 133 
#define  NVME_LOG_ERROR 132 
#define  NVME_LOG_FIRMWARE_SLOT 131 
#define  NVME_LOG_HEALTH_INFORMATION 130 
#define  NVME_LOG_RES_NOTIFICATION 129 
#define  NVME_LOG_SANITIZE_STATUS 128 
 int /*<<< orphan*/  NVME_OPC_GET_LOG_PAGE ; 
 int /*<<< orphan*/  NVME_PASSTHROUGH_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_log_temp_stats*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct nvme_pt_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_pt_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_command_effects_page*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_firmware_page*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvme_health_information_page*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_ns_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_res_notification_page*) ; 
 int /*<<< orphan*/  FUNC13 (struct nvme_sanitize_status_page*) ; 

void
FUNC14(int fd, uint8_t log_page, uint32_t nsid, uint8_t lsp,
    uint16_t lsi, uint8_t rae, void *payload, uint32_t payload_size)
{
	struct nvme_pt_command	pt;
	struct nvme_error_information_entry	*err_entry;
	u_int i, err_pages, numd;

	numd = payload_size / sizeof(uint32_t) - 1;
	FUNC5(&pt, 0, sizeof(pt));
	pt.cmd.opc = NVME_OPC_GET_LOG_PAGE;
	pt.cmd.nsid = FUNC2(nsid);
	pt.cmd.cdw10 = FUNC2(
	    (numd << 16) |			/* NUMDL */
	    (rae << 15) |			/* RAE */
	    (lsp << 8) |			/* LSP */
	    log_page);				/* LID */
	pt.cmd.cdw11 = FUNC2(
	    ((uint32_t)lsi << 16) |		/* LSI */
	    (numd >> 16));			/* NUMDU */
	pt.cmd.cdw12 = 0;			/* LPOL */
	pt.cmd.cdw13 = 0;			/* LPOU */
	pt.cmd.cdw14 = 0;			/* UUID Index */
	pt.buf = payload;
	pt.len = payload_size;
	pt.is_read = 1;

	if (FUNC4(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
		FUNC0(1, "get log page request failed");

	/* Convert data to host endian */
	switch (log_page) {
	case NVME_LOG_ERROR:
		err_entry = (struct nvme_error_information_entry *)payload;
		err_pages = payload_size / sizeof(struct nvme_error_information_entry);
		for (i = 0; i < err_pages; i++)
			FUNC8(err_entry++);
		break;
	case NVME_LOG_HEALTH_INFORMATION:
		FUNC10(
		    (struct nvme_health_information_page *)payload);
		break;
	case NVME_LOG_FIRMWARE_SLOT:
		FUNC9(
		    (struct nvme_firmware_page *)payload);
		break;
	case NVME_LOG_CHANGED_NAMESPACE:
		FUNC11((struct nvme_ns_list *)payload);
		break;
	case NVME_LOG_COMMAND_EFFECT:
		FUNC6(
		    (struct nvme_command_effects_page *)payload);
		break;
	case NVME_LOG_RES_NOTIFICATION:
		FUNC12(
		    (struct nvme_res_notification_page *)payload);
		break;
	case NVME_LOG_SANITIZE_STATUS:
		FUNC13(
		    (struct nvme_sanitize_status_page *)payload);
		break;
	case INTEL_LOG_TEMP_STATS:
		FUNC3(
		    (struct intel_log_temp_stats *)payload);
		break;
	default:
		break;
	}

	if (FUNC7(&pt.cpl))
		FUNC1(1, "get log page request returned error");
}