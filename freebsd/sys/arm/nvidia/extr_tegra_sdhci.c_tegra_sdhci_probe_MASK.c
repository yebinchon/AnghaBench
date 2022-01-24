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
struct tegra_sdhci_softc {void* max_clk; void* quirks; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cid ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**,int) ; 
 int /*<<< orphan*/  compat_data ; 
 struct tegra_sdhci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct ofw_compat_data* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct tegra_sdhci_softc *sc;
	phandle_t node;
	pcell_t cid;
	const struct ofw_compat_data *cd;

	sc = FUNC1(dev);
	if (!FUNC6(dev))
		return (ENXIO);

	if (FUNC4(dev, "nvidia,tegra124-sdhci")) {
		FUNC2(dev, "Tegra SDHCI controller");
	} else
		return (ENXIO);
	cd = FUNC5(dev, compat_data);
	if (cd->ocd_data == 0)
		return (ENXIO);

	node = FUNC3(dev);

	/* Allow dts to patch quirks, slots, and max-frequency. */
	if ((FUNC0(node, "quirks", &cid, sizeof(cid))) > 0)
		sc->quirks = cid;
	if ((FUNC0(node, "max-frequency", &cid, sizeof(cid))) > 0)
		sc->max_clk = cid;

	return (BUS_PROBE_DEFAULT);
}