#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ exists; } ;
struct acpi_fujitsu_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; TYPE_1__ gmou; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct acpi_fujitsu_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fujitsu ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct acpi_fujitsu_softc   *sc;
	ACPI_STATUS		    status;

	sc = FUNC4(dev);

	/*
	 * The pointer needs to be re-enabled for
	 * some revisions of the P series (2120).
	 */
	FUNC1(fujitsu);

	if(sc->gmou.exists) {
		status = FUNC3(sc->handle, "SMOU", 1);
		if (FUNC0(status))
			FUNC5(sc->dev, "Couldn't enable pointer\n");
	}
	FUNC2(fujitsu);

	return (0);
}