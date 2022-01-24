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
struct ctlfe_lun_softc {scalar_t__ refcount; } ;
struct cam_periph {struct ctlfe_lun_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*,scalar_t__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 

__attribute__((used)) static void
FUNC4(void *context, int pending)
{
	struct cam_periph *periph = context;
	struct ctlfe_lun_softc *softc = periph->softc;

	FUNC0(periph);
	while (softc->refcount != 0) {
		FUNC2(periph, &softc->refcount, PRIBIO,
		    "ctlfe_drain", 1);
	}
	FUNC3(periph);
	FUNC1(periph);
}