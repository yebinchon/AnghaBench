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
typedef  union ccb {int dummy; } ccb ;
typedef  int u_int ;
struct ccb_trans_settings_spi {int ppr_options; int sync_offset; int valid; int bus_width; } ;
struct ccb_trans_settings_fc {int valid; int port; scalar_t__ wwpn; scalar_t__ wwnn; } ;
struct TYPE_4__ {struct ccb_trans_settings_fc fc; struct ccb_trans_settings_spi spi; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct ccb_trans_settings {scalar_t__ transport; TYPE_2__ xport_specific; TYPE_1__ ccb_h; } ;
struct cam_periph {char* periph_name; int unit_number; } ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 int CTS_FC_VALID_PORT ; 
 int CTS_FC_VALID_WWNN ; 
 int CTS_FC_VALID_WWPN ; 
 int CTS_SPI_VALID_BUS_WIDTH ; 
 int MSG_EXT_PPR_DT_REQ ; 
 scalar_t__ XPORT_FC ; 
 scalar_t__ XPORT_SPI ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*,int*,int*,struct ccb_trans_settings*) ; 
 scalar_t__ FUNC1 (union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(struct cam_periph *periph)
{
	struct	ccb_trans_settings cts;
	u_int speed, freq, mb;

	FUNC0(periph, &speed, &freq, &cts);
	if (FUNC1((union ccb *)&cts) != CAM_REQ_CMP)
		return;

	mb = speed / 1000;
	if (mb > 0)
		FUNC2("%s%d: %d.%03dMB/s transfers",
		       periph->periph_name, periph->unit_number,
		       mb, speed % 1000);
	else
		FUNC2("%s%d: %dKB/s transfers", periph->periph_name,
		       periph->unit_number, speed);
	/* Report additional information about SPI connections */
	if (cts.ccb_h.status == CAM_REQ_CMP && cts.transport == XPORT_SPI) {
		struct	ccb_trans_settings_spi *spi;

		spi = &cts.xport_specific.spi;
		if (freq != 0) {
			FUNC2(" (%d.%03dMHz%s, offset %d", freq / 1000,
			       freq % 1000,
			       (spi->ppr_options & MSG_EXT_PPR_DT_REQ) != 0
			     ? " DT" : "",
			       spi->sync_offset);
		}
		if ((spi->valid & CTS_SPI_VALID_BUS_WIDTH) != 0
		 && spi->bus_width > 0) {
			if (freq != 0) {
				FUNC2(", ");
			} else {
				FUNC2(" (");
			}
			FUNC2("%dbit)", 8 * (0x01 << spi->bus_width));
		} else if (freq != 0) {
			FUNC2(")");
		}
	}
	if (cts.ccb_h.status == CAM_REQ_CMP && cts.transport == XPORT_FC) {
		struct	ccb_trans_settings_fc *fc;

		fc = &cts.xport_specific.fc;
		if (fc->valid & CTS_FC_VALID_WWNN)
			FUNC2(" WWNN 0x%llx", (long long) fc->wwnn);
		if (fc->valid & CTS_FC_VALID_WWPN)
			FUNC2(" WWPN 0x%llx", (long long) fc->wwpn);
		if (fc->valid & CTS_FC_VALID_PORT)
			FUNC2(" PortID 0x%x", fc->port);
	}
	FUNC2("\n");
}