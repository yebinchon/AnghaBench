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
struct pt_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  device_stats; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct cam_periph *periph)
{
	struct pt_softc *softc;

	softc = (struct pt_softc *)periph->softc;

	FUNC3(softc->device_stats);
	FUNC1(periph);
	FUNC2(softc->dev);
	FUNC0(periph);
	FUNC4(softc, M_DEVBUF);
}