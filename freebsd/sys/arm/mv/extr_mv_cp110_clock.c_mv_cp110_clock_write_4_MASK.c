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
typedef  int /*<<< orphan*/  uint32_t ;
struct mv_cp110_clock_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv_cp110_clock_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mv_cp110_clock_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, bus_addr_t addr, uint32_t val)
{
	struct mv_cp110_clock_softc *sc;

	sc = FUNC1(dev);
	FUNC0(sc, addr, val);
	return (0);
}