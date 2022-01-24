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
typedef  int uint32_t ;
struct tegra_mux {int gpio_num; } ;
struct tegra_grp {int dummy; } ;
struct pinmux_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  mipi_mem_res; } ;
struct pincfg {char* function; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (struct pinmux_softc*,char*,struct tegra_grp const*,struct pincfg*) ; 
 int FUNC4 (struct pinmux_softc*,char*,struct tegra_mux const*,struct pincfg*) ; 
 struct tegra_grp* FUNC5 (char*) ; 
 struct tegra_mux* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(struct pinmux_softc *sc, char *pin_name, struct pincfg *cfg)
{
	const struct tegra_mux *mux;
	const struct tegra_grp *grp;
	uint32_t reg;
	int rv;

	/* Handle MIPI special case first */
	if (FUNC7(pin_name, "dsi_b") == 0) {
		if (cfg->function == NULL) {
			/* nothing to set */
			return (0);
		}
		reg = FUNC0(sc->mipi_mem_res, 0); /* register 0x820 */
		if (FUNC7(cfg->function, "csi") == 0)
			reg &= ~(1 << 1);
		else if (FUNC7(cfg->function, "dsi_b") == 0)
			reg |= (1 << 1);
		FUNC1(sc->mipi_mem_res, 0, reg); /* register 0x820 */
	}

	/* Handle pin muxes */
	mux = FUNC6(pin_name);
	if (mux != NULL) {
		if (mux->gpio_num != -1) {
			/* XXXX TODO: Reserve gpio here */
		}
		rv = FUNC4(sc, pin_name, mux, cfg);
		return (rv);
	}

	/* Handle pin groups */
	grp = FUNC5(pin_name);
	if (grp != NULL) {
		rv = FUNC3(sc, pin_name, grp, cfg);
		return (rv);
	}

	FUNC2(sc->dev, "Unknown pin: %s\n", pin_name);
	return (ENXIO);
}