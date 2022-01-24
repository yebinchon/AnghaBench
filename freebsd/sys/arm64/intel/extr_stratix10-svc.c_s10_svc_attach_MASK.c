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
struct s10_svc_softc {int /*<<< orphan*/ * callfn; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct s10_svc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct s10_svc_softc*) ; 
 int /*<<< orphan*/ * FUNC4 (struct s10_svc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct s10_svc_softc *sc;
	phandle_t node;

	node = FUNC2(dev);

	sc = FUNC0(dev);
	sc->dev = dev;

	if (FUNC1(dev) != 0)
		return (ENXIO);

	sc->callfn = FUNC4(sc, node);
	if (sc->callfn == NULL)
		return (ENXIO);

	if (FUNC3(sc) != 0)
		return (ENXIO);

	return (0);
}