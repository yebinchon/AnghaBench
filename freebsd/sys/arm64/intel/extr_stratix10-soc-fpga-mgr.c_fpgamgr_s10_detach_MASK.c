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
struct fpgamgr_s10_softc {int /*<<< orphan*/  sx; int /*<<< orphan*/  mgr_cdev_partial; int /*<<< orphan*/  mgr_cdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fpgamgr_s10_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct fpgamgr_s10_softc *sc;

	sc = FUNC1(dev);

	FUNC0(sc->mgr_cdev);
	FUNC0(sc->mgr_cdev_partial);

	FUNC2(&sc->sx);

	return (0);
}