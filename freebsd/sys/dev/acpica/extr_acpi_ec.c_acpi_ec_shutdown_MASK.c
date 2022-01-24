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
struct acpi_ec_softc {int /*<<< orphan*/  ec_gpebit; int /*<<< orphan*/  ec_gpehandle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_ec_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
    struct acpi_ec_softc	*sc;

    /* Disable the GPE so we don't get EC events during shutdown. */
    sc = FUNC1(dev);
    FUNC0(sc->ec_gpehandle, sc->ec_gpebit);
    return (0);
}