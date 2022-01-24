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
struct ec_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ec_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ec_softc* ec_sc ; 

__attribute__((used)) static int
FUNC1(device_t dev)
{
	struct ec_softc *sc;

	sc = FUNC0(dev);
	sc->dev = dev;

	ec_sc = sc;

	return (0);
}