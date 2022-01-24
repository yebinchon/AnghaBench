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
typedef  scalar_t__ uint16_t ;
struct amdvi_softc {scalar_t__ start_dev_rid; scalar_t__ end_dev_rid; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct amdvi_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int ivhd_count ; 
 int /*<<< orphan*/ * ivhd_devs ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static struct amdvi_softc *
FUNC3(uint16_t devid)
{
	struct amdvi_softc *softc;
	int i;

	for (i = 0; i < ivhd_count; i++) {
		softc = FUNC1(ivhd_devs[i]);
		if ((devid >= softc->start_dev_rid) &&
		    (devid <= softc->end_dev_rid))
			return (softc);
	}

	/*
	 * XXX: BIOS bug, device not in IVRS table, assume its from first IOMMU.
	 */
	FUNC2("BIOS bug device(%d.%d.%d) doesn't have IVHD entry.\n",
	    FUNC0(devid));

	return (FUNC1(ivhd_devs[0]));
}