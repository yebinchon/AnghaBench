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
struct amdvi_softc {scalar_t__ event; scalar_t__ cmd; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_AMDVI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC2(struct amdvi_softc *softc)
{
	device_t dev;

	dev = softc->dev;

	/* 
	 * Called after disable, h/w is stopped by now, free all the resources. 
	 */
	FUNC0(dev);

	if (softc->cmd)
		FUNC1(softc->cmd, M_AMDVI);

	if (softc->event)
		FUNC1(softc->event, M_AMDVI);

	return (0);
}