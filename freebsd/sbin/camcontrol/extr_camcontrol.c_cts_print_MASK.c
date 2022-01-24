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
typedef  int u_int ;
struct ccb_trans_settings_spi {int valid; int sync_period; int sync_offset; int bus_width; int flags; } ;
struct ccb_trans_settings_scsi {int valid; int flags; } ;
struct ccb_trans_settings_sata {int valid; int revision; int atapi; int bytecount; int pm_present; int tags; int caps; int /*<<< orphan*/  mode; } ;
struct ccb_trans_settings_sas {int valid; int bitrate; } ;
struct ccb_trans_settings_pata {int valid; int atapi; int bytecount; int /*<<< orphan*/  mode; } ;
struct ccb_trans_settings_nvme {int valid; int lanes; int max_lanes; int speed; int max_speed; int /*<<< orphan*/  spec; } ;
struct ccb_trans_settings_fc {int valid; int port; int bitrate; scalar_t__ wwpn; scalar_t__ wwnn; } ;
struct ccb_trans_settings_ata {int valid; int flags; } ;
struct TYPE_4__ {struct ccb_trans_settings_nvme nvme; struct ccb_trans_settings_sata sata; struct ccb_trans_settings_pata ata; struct ccb_trans_settings_sas sas; struct ccb_trans_settings_fc fc; struct ccb_trans_settings_spi spi; } ;
struct TYPE_3__ {struct ccb_trans_settings_scsi scsi; struct ccb_trans_settings_ata ata; } ;
struct ccb_trans_settings {scalar_t__ transport; scalar_t__ protocol; TYPE_2__ xport_specific; TYPE_1__ proto_specific; } ;
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  pathstr ;

/* Variables and functions */
 int CTS_ATA_FLAGS_TAG_ENB ; 
 int CTS_ATA_VALID_ATAPI ; 
 int CTS_ATA_VALID_BYTECOUNT ; 
 int CTS_ATA_VALID_MODE ; 
 int CTS_ATA_VALID_TQ ; 
 int CTS_FC_VALID_PORT ; 
 int CTS_FC_VALID_SPEED ; 
 int CTS_FC_VALID_WWNN ; 
 int CTS_FC_VALID_WWPN ; 
 int CTS_NVME_VALID_LINK ; 
 int CTS_NVME_VALID_SPEC ; 
 int CTS_SAS_VALID_SPEED ; 
 int CTS_SATA_VALID_ATAPI ; 
 int CTS_SATA_VALID_BYTECOUNT ; 
 int CTS_SATA_VALID_CAPS ; 
 int CTS_SATA_VALID_MODE ; 
 int CTS_SATA_VALID_PM ; 
 int CTS_SATA_VALID_REVISION ; 
 int CTS_SATA_VALID_TAGS ; 
 int CTS_SCSI_FLAGS_TAG_ENB ; 
 int CTS_SCSI_VALID_TQ ; 
 int CTS_SPI_FLAGS_DISC_ENB ; 
 int CTS_SPI_VALID_BUS_WIDTH ; 
 int CTS_SPI_VALID_DISC ; 
 int CTS_SPI_VALID_SYNC_OFFSET ; 
 int CTS_SPI_VALID_SYNC_RATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROTO_ATA ; 
 scalar_t__ PROTO_NVME ; 
 scalar_t__ PROTO_SCSI ; 
 scalar_t__ XPORT_ATA ; 
 scalar_t__ XPORT_FC ; 
 scalar_t__ XPORT_SAS ; 
 scalar_t__ XPORT_SATA ; 
 scalar_t__ XPORT_SPI ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC6(struct cam_device *device, struct ccb_trans_settings *cts)
{
	char pathstr[1024];

	FUNC3(device, pathstr, sizeof(pathstr));

	if (cts->transport == XPORT_SPI) {
		struct ccb_trans_settings_spi *spi =
		    &cts->xport_specific.spi;

		if ((spi->valid & CTS_SPI_VALID_SYNC_RATE) != 0) {

			FUNC4(stdout, "%ssync parameter: %d\n", pathstr,
				spi->sync_period);

			if (spi->sync_offset != 0) {
				u_int freq;

				freq = FUNC5(spi->sync_period);
				FUNC4(stdout, "%sfrequency: %d.%03dMHz\n",
					pathstr, freq / 1000, freq % 1000);
			}
		}

		if (spi->valid & CTS_SPI_VALID_SYNC_OFFSET) {
			FUNC4(stdout, "%soffset: %d\n", pathstr,
			    spi->sync_offset);
		}

		if (spi->valid & CTS_SPI_VALID_BUS_WIDTH) {
			FUNC4(stdout, "%sbus width: %d bits\n", pathstr,
				(0x01 << spi->bus_width) * 8);
		}

		if (spi->valid & CTS_SPI_VALID_DISC) {
			FUNC4(stdout, "%sdisconnection is %s\n", pathstr,
				(spi->flags & CTS_SPI_FLAGS_DISC_ENB) ?
				"enabled" : "disabled");
		}
	}
	if (cts->transport == XPORT_FC) {
		struct ccb_trans_settings_fc *fc =
		    &cts->xport_specific.fc;

		if (fc->valid & CTS_FC_VALID_WWNN)
			FUNC4(stdout, "%sWWNN: 0x%llx\n", pathstr,
			    (long long) fc->wwnn);
		if (fc->valid & CTS_FC_VALID_WWPN)
			FUNC4(stdout, "%sWWPN: 0x%llx\n", pathstr,
			    (long long) fc->wwpn);
		if (fc->valid & CTS_FC_VALID_PORT)
			FUNC4(stdout, "%sPortID: 0x%x\n", pathstr, fc->port);
		if (fc->valid & CTS_FC_VALID_SPEED)
			FUNC4(stdout, "%stransfer speed: %d.%03dMB/s\n",
			    pathstr, fc->bitrate / 1000, fc->bitrate % 1000);
	}
	if (cts->transport == XPORT_SAS) {
		struct ccb_trans_settings_sas *sas =
		    &cts->xport_specific.sas;

		if (sas->valid & CTS_SAS_VALID_SPEED)
			FUNC4(stdout, "%stransfer speed: %d.%03dMB/s\n",
			    pathstr, sas->bitrate / 1000, sas->bitrate % 1000);
	}
	if (cts->transport == XPORT_ATA) {
		struct ccb_trans_settings_pata *pata =
		    &cts->xport_specific.ata;

		if ((pata->valid & CTS_ATA_VALID_MODE) != 0) {
			FUNC4(stdout, "%sATA mode: %s\n", pathstr,
				FUNC2(pata->mode));
		}
		if ((pata->valid & CTS_ATA_VALID_ATAPI) != 0) {
			FUNC4(stdout, "%sATAPI packet length: %d\n", pathstr,
				pata->atapi);
		}
		if ((pata->valid & CTS_ATA_VALID_BYTECOUNT) != 0) {
			FUNC4(stdout, "%sPIO transaction length: %d\n",
				pathstr, pata->bytecount);
		}
	}
	if (cts->transport == XPORT_SATA) {
		struct ccb_trans_settings_sata *sata =
		    &cts->xport_specific.sata;

		if ((sata->valid & CTS_SATA_VALID_REVISION) != 0) {
			FUNC4(stdout, "%sSATA revision: %d.x\n", pathstr,
				sata->revision);
		}
		if ((sata->valid & CTS_SATA_VALID_MODE) != 0) {
			FUNC4(stdout, "%sATA mode: %s\n", pathstr,
				FUNC2(sata->mode));
		}
		if ((sata->valid & CTS_SATA_VALID_ATAPI) != 0) {
			FUNC4(stdout, "%sATAPI packet length: %d\n", pathstr,
				sata->atapi);
		}
		if ((sata->valid & CTS_SATA_VALID_BYTECOUNT) != 0) {
			FUNC4(stdout, "%sPIO transaction length: %d\n",
				pathstr, sata->bytecount);
		}
		if ((sata->valid & CTS_SATA_VALID_PM) != 0) {
			FUNC4(stdout, "%sPMP presence: %d\n", pathstr,
				sata->pm_present);
		}
		if ((sata->valid & CTS_SATA_VALID_TAGS) != 0) {
			FUNC4(stdout, "%sNumber of tags: %d\n", pathstr,
				sata->tags);
		}
		if ((sata->valid & CTS_SATA_VALID_CAPS) != 0) {
			FUNC4(stdout, "%sSATA capabilities: %08x\n", pathstr,
				sata->caps);
		}
	}
	if (cts->protocol == PROTO_ATA) {
		struct ccb_trans_settings_ata *ata=
		    &cts->proto_specific.ata;

		if (ata->valid & CTS_ATA_VALID_TQ) {
			FUNC4(stdout, "%stagged queueing: %s\n", pathstr,
				(ata->flags & CTS_ATA_FLAGS_TAG_ENB) ?
				"enabled" : "disabled");
		}
	}
	if (cts->protocol == PROTO_SCSI) {
		struct ccb_trans_settings_scsi *scsi=
		    &cts->proto_specific.scsi;

		if (scsi->valid & CTS_SCSI_VALID_TQ) {
			FUNC4(stdout, "%stagged queueing: %s\n", pathstr,
				(scsi->flags & CTS_SCSI_FLAGS_TAG_ENB) ?
				"enabled" : "disabled");
		}
	}
#ifdef WITH_NVME
	if (cts->protocol == PROTO_NVME) {
		struct ccb_trans_settings_nvme *nvmex =
		    &cts->xport_specific.nvme;

		if (nvmex->valid & CTS_NVME_VALID_SPEC) {
			fprintf(stdout, "%sNVMe Spec: %d.%d\n", pathstr,
			    NVME_MAJOR(nvmex->spec),
			    NVME_MINOR(nvmex->spec));
		}
		if (nvmex->valid & CTS_NVME_VALID_LINK) {
			fprintf(stdout, "%sPCIe lanes: %d (%d max)\n", pathstr,
			    nvmex->lanes, nvmex->max_lanes);
			fprintf(stdout, "%sPCIe Generation: %d (%d max)\n", pathstr,
			    nvmex->speed, nvmex->max_speed);
		}
	}
#endif
}