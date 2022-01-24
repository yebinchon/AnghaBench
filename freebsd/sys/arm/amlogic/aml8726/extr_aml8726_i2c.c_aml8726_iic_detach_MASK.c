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
struct aml8726_iic_softc {int /*<<< orphan*/  res; scalar_t__ iicbb; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_iic_softc*) ; 
 int /*<<< orphan*/  aml8726_iic_spec ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 struct aml8726_iic_softc* FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct aml8726_iic_softc *sc = FUNC4(dev);
	device_t child;

	/*
	 * Detach the children before recursively deleting
	 * in case a child has a pointer to a grandchild
	 * which is used by the child's detach routine.
	 *
	 * Remember the child before detaching so we can
	 * delete it (bus_generic_detach indirectly zeroes
	 * sc->child_dev).
	 */
	child = sc->iicbb;
	FUNC1(dev);
	if (child)
		FUNC3(dev, child);

	FUNC0(sc);

	FUNC2(dev, aml8726_iic_spec, sc->res);

	return (0);
}