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
struct sg_softc {int /*<<< orphan*/  device_stats; } ;
struct cam_periph {struct sg_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 

__attribute__((used)) static int
FUNC2(struct cam_periph *periph, union ccb *ccb)
{
	struct sg_softc *softc;

	softc = periph->softc;
	FUNC0(softc->device_stats, NULL);
	FUNC1(ccb);
	return (0);
}