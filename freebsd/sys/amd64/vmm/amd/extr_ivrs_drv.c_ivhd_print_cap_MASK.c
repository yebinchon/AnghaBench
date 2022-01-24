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
struct amdvi_softc {int start_dev_rid; int end_dev_rid; int /*<<< orphan*/  dev; int /*<<< orphan*/  ext_feature; int /*<<< orphan*/  ivhd_feature; int /*<<< orphan*/  ivhd_type; int /*<<< orphan*/  ivhd_flag; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_IVRS_HARDWARE ;

/* Variables and functions */
 int EINVAL ; 
 int amdvi_ptp_level ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct amdvi_softc *softc, ACPI_IVRS_HARDWARE * ivhd)
{
	device_t dev;
	int max_ptp_level;

	dev = softc->dev;
	
	FUNC3(dev, softc->ivhd_type, softc->ivhd_flag);
	FUNC2(dev, softc->ivhd_type, softc->ivhd_feature);
	FUNC1(dev, softc->ext_feature);
	max_ptp_level = 7;
	/* Make sure device support minimum page level as requested by user. */
	if (max_ptp_level < amdvi_ptp_level) {
		FUNC0(dev, "insufficient PTP level:%d\n",
			max_ptp_level);
		return (EINVAL);
	} else {
		FUNC0(softc->dev, "supported paging level:%d, will use only: %d\n",
	    		max_ptp_level, amdvi_ptp_level);
	}

	FUNC0(softc->dev, "device range: 0x%x - 0x%x\n",
			softc->start_dev_rid, softc->end_dev_rid);

	return (0);
}