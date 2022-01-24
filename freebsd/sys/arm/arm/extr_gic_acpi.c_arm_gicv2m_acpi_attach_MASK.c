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
struct arm_gicv2m_softc {int /*<<< orphan*/  sc_xref; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_MSI_XREF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct arm_gicv2m_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct arm_gicv2m_softc *sc;

	sc = FUNC1(dev);
	sc->sc_xref = ACPI_MSI_XREF;

	return (FUNC0(dev));
}