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
struct mv_thermal_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mv_thermal_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t dev)
{
	struct mv_thermal_softc *sc;

	sc = FUNC0(dev);

	return (0);
}