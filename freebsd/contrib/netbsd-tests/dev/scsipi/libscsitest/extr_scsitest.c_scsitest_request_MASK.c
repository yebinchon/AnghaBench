#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsipi_xfer {int xs_control; struct scsipi_toc_header* data; struct scsipi_generic* cmd; } ;
struct scsipi_toc_header {int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev_qual2; int /*<<< orphan*/  device; } ;
struct scsipi_start_stop {int how; } ;
struct scsipi_read_trackinfo_data {int /*<<< orphan*/  track_size; } ;
struct scsipi_read_discinfo_data {int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev_qual2; int /*<<< orphan*/  device; } ;
struct scsipi_read_cd_cap_data {int /*<<< orphan*/  addr; int /*<<< orphan*/  length; } ;
struct scsipi_inquiry_data {int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev_qual2; int /*<<< orphan*/  device; } ;
struct scsipi_get_conf_data {int dummy; } ;
struct scsipi_generic {int opcode; } ;
struct scsipi_channel {int dummy; } ;
struct scsi_rw_6 {int length; int /*<<< orphan*/  addr; } ;
typedef  scalar_t__ scsipi_adapter_req_t ;

/* Variables and functions */
 scalar_t__ ADAPTER_REQ_RUN_XFER ; 
 int CDBLOCKSIZE ; 
#define  GET_CONFIGURATION 138 
#define  INQUIRY 137 
#define  READ_CD_CAPACITY 136 
#define  READ_DISCINFO 135 
#define  READ_TOC 134 
#define  READ_TRACKINFO 133 
 size_t RUMP_SCSITEST_NOISYSYNC ; 
#define  SCSI_PREVENT_ALLOW_MEDIUM_REMOVAL 132 
#define  SCSI_READ_6_COMMAND 131 
#define  SCSI_SYNCHRONIZE_CACHE_10 130 
#define  SCSI_TEST_UNIT_READY 129 
 int /*<<< orphan*/  SID_REMOVABLE ; 
 int SSS_LOEJ ; 
#define  START_STOP 128 
 int /*<<< orphan*/  T_CDROM ; 
 int XS_CTL_SILENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int isofd ; 
 int /*<<< orphan*/  FUNC3 (struct scsipi_toc_header*,int /*<<< orphan*/ ,int) ; 
 int mycdsize ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/ * rump_scsitest_err ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct scsipi_toc_header*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsipi_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsipi_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC10(struct scsipi_channel *chan,
	scsipi_adapter_req_t req, void *arg)
{
	struct scsipi_xfer *xs = arg;
	struct scsipi_generic *cmd = xs->cmd;
#ifdef USE_TOSI_ISO
	int error;
#endif

	if (req != ADAPTER_REQ_RUN_XFER)
		return;

	//show_scsipi_xs(xs);

	switch (cmd->opcode) {
	case SCSI_TEST_UNIT_READY:
		if (isofd == -1)
			FUNC8(xs);

		break;
	case INQUIRY: {
		struct scsipi_inquiry_data *inqbuf = (void *)xs->data;

		FUNC3(inqbuf, 0, sizeof(*inqbuf));
		inqbuf->device = T_CDROM;
		inqbuf->dev_qual2 = SID_REMOVABLE;
		FUNC9(inqbuf->vendor, "RUMPHOBO");
		FUNC9(inqbuf->product, "It's a LIE");
		FUNC9(inqbuf->revision, "0.00");
		break;
	}
	case READ_CD_CAPACITY: {
		struct scsipi_read_cd_cap_data *ret = (void *)xs->data;

		FUNC1(CDBLOCKSIZE, ret->length);
		FUNC1(mycdsize, ret->addr);

		break;
	}
	case READ_DISCINFO: {
		struct scsipi_read_discinfo_data *ret = (void *)xs->data;

		FUNC3(ret, 0, sizeof(*ret));
		break;
	}
	case READ_TRACKINFO: {
		struct scsipi_read_trackinfo_data *ret = (void *)xs->data;

		FUNC1(mycdsize, ret->track_size);
		break;
	}
	case READ_TOC: {
		struct scsipi_toc_header *ret = (void *)xs->data;

		FUNC3(ret, 0, sizeof(*ret));
		break;
	}
	case START_STOP: {
		struct scsipi_start_stop *param = (void *)cmd;

		if (param->how & SSS_LOEJ) {
#ifdef USE_TOSI_ISO
			rumpuser_close(isofd, &error);
#endif
			isofd = -1;
		}
		break;
	}
	case SCSI_SYNCHRONIZE_CACHE_10: {
		if (isofd == -1) {
			if ((xs->xs_control & XS_CTL_SILENT) == 0)
				FUNC2(&rump_scsitest_err
				    [RUMP_SCSITEST_NOISYSYNC]);
			
			FUNC8(xs);
		}

		break;
	}
	case GET_CONFIGURATION: {
		FUNC3(xs->data, 0, sizeof(struct scsipi_get_conf_data));
		break;
	}
	case SCSI_READ_6_COMMAND: {
#ifdef USE_TOSI_ISO
		struct scsi_rw_6 *param = (void *)cmd;

		printf("reading %d bytes from %d\n",
		    param->length * CDBLOCKSIZE,
		    _3btol(param->addr) * CDBLOCKSIZE);
		rumpuser_pread(isofd, xs->data,
		     param->length * CDBLOCKSIZE,
		     _3btol(param->addr) * CDBLOCKSIZE,
		     &error);
#endif

		break;
	}
	case SCSI_PREVENT_ALLOW_MEDIUM_REMOVAL:
		/* hardcoded for now */
		break;
	default:
		FUNC4("unhandled opcode 0x%x\n", cmd->opcode);
		break;
	}

	FUNC7(xs);
}