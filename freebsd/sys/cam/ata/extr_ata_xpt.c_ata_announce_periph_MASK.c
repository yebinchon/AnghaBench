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
struct ccb_trans_settings_sata {int valid; int revision; scalar_t__ atapi; int bytecount; int /*<<< orphan*/  mode; } ;
struct ccb_trans_settings_pata {int valid; scalar_t__ atapi; int bytecount; int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {struct ccb_trans_settings_sata sata; struct ccb_trans_settings_pata ata; } ;
struct TYPE_3__ {int status; } ;
struct ccb_trans_settings {scalar_t__ transport; TYPE_2__ xport_specific; TYPE_1__ ccb_h; } ;
struct cam_periph {char* periph_name; int unit_number; } ;

/* Variables and functions */
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int CTS_ATA_VALID_ATAPI ; 
 int CTS_ATA_VALID_BYTECOUNT ; 
 int CTS_ATA_VALID_MODE ; 
 int CTS_SATA_VALID_BYTECOUNT ; 
 int CTS_SATA_VALID_MODE ; 
 int CTS_SATA_VALID_REVISION ; 
 scalar_t__ XPORT_ATA ; 
 scalar_t__ XPORT_SATA ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*,struct ccb_trans_settings*,int*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(struct cam_periph *periph)
{
	struct ccb_trans_settings cts;
	u_int speed, mb;

	FUNC0(periph, &cts, &speed);
	if ((cts.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP)
		return;

	mb = speed / 1000;
	if (mb > 0)
		FUNC2("%s%d: %d.%03dMB/s transfers",
		       periph->periph_name, periph->unit_number,
		       mb, speed % 1000);
	else
		FUNC2("%s%d: %dKB/s transfers", periph->periph_name,
		       periph->unit_number, speed);
	/* Report additional information about connection */
	if (cts.transport == XPORT_ATA) {
		struct ccb_trans_settings_pata *pata =
		    &cts.xport_specific.ata;

		FUNC2(" (");
		if (pata->valid & CTS_ATA_VALID_MODE)
			FUNC2("%s, ", FUNC1(pata->mode));
		if ((pata->valid & CTS_ATA_VALID_ATAPI) && pata->atapi != 0)
			FUNC2("ATAPI %dbytes, ", pata->atapi);
		if (pata->valid & CTS_ATA_VALID_BYTECOUNT)
			FUNC2("PIO %dbytes", pata->bytecount);
		FUNC2(")");
	}
	if (cts.transport == XPORT_SATA) {
		struct ccb_trans_settings_sata *sata =
		    &cts.xport_specific.sata;

		FUNC2(" (");
		if (sata->valid & CTS_SATA_VALID_REVISION)
			FUNC2("SATA %d.x, ", sata->revision);
		else
			FUNC2("SATA, ");
		if (sata->valid & CTS_SATA_VALID_MODE)
			FUNC2("%s, ", FUNC1(sata->mode));
		if ((sata->valid & CTS_ATA_VALID_ATAPI) && sata->atapi != 0)
			FUNC2("ATAPI %dbytes, ", sata->atapi);
		if (sata->valid & CTS_SATA_VALID_BYTECOUNT)
			FUNC2("PIO %dbytes", sata->bytecount);
		FUNC2(")");
	}
	FUNC2("\n");
}