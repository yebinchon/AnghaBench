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
typedef  union ccb {int dummy; } ccb ;
struct sg_softc {int /*<<< orphan*/  device_stats; int /*<<< orphan*/  maxio; } ;
struct cam_periph_map_info {int dummy; } ;
struct cam_periph {struct sg_softc* softc; } ;
typedef  int /*<<< orphan*/  mapinfo ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int /*<<< orphan*/  SF_RETRY_UA ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph_map_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int FUNC2 (union ccb*,struct cam_periph_map_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*,struct cam_periph_map_info*) ; 
 int /*<<< orphan*/  sgerror ; 

__attribute__((used)) static int
FUNC6(struct cam_periph *periph, union ccb *ccb)
{
	struct sg_softc *softc;
	struct cam_periph_map_info mapinfo;
	int error;

	softc = periph->softc;
	FUNC0(&mapinfo, sizeof(mapinfo));

	/*
	 * cam_periph_mapmem calls into proc and vm functions that can
	 * sleep as well as trigger I/O, so we can't hold the lock.
	 * Dropping it here is reasonably safe.
	 * The only CCB opcode that is possible here is XPT_SCSI_IO, no
	 * need for additional checks.
	 */
	FUNC4(periph);
	error = FUNC2(ccb, &mapinfo, softc->maxio);
	FUNC1(periph);
	if (error)
		return (error);

	error = FUNC3(ccb,
				  sgerror,
				  CAM_RETRY_SELTO,
				  SF_RETRY_UA,
				  softc->device_stats);

	FUNC4(periph);
	FUNC5(ccb, &mapinfo);
	FUNC1(periph);

	return (error);
}