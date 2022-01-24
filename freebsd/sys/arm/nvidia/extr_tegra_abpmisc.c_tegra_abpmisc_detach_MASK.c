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
struct tegra_abpmisc_softc {int /*<<< orphan*/ * strap_opt_res; int /*<<< orphan*/ * abp_misc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct tegra_abpmisc_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct tegra_abpmisc_softc *sc;

	sc = FUNC2(dev);
	if (sc->abp_misc_res != NULL)
		FUNC1(dev, SYS_RES_MEMORY, 0, sc->abp_misc_res);
	if (sc->strap_opt_res != NULL)
		FUNC1(dev, SYS_RES_MEMORY, 1, sc->strap_opt_res);
	return (FUNC0(dev));
}