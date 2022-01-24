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
struct ti_pinmux_softc {int dummy; } ;
struct pincfg {int reg; int conf; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pincfg*) ; 
 scalar_t__ bootverbose ; 
 struct ti_pinmux_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_pinmux_softc*,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, phandle_t cfgxref)
{
	struct pincfg *cfgtuples, *cfg;
	phandle_t cfgnode;
	int i, ntuples;
	static struct ti_pinmux_softc *sc;

	sc = FUNC4(dev);
	cfgnode = FUNC2(cfgxref);
	ntuples = FUNC0(cfgnode, "pinctrl-single,pins",
	    sizeof(*cfgtuples), (void **)&cfgtuples);

	if (ntuples < 0)
		return (ENOENT);

	if (ntuples == 0)
		return (0); /* Empty property is not an error. */

	for (i = 0, cfg = cfgtuples; i < ntuples; i++, cfg++) {
		if (bootverbose) {
			char name[32];
			FUNC1(cfgnode, "name", &name, sizeof(name));
			FUNC5("%16s: muxreg 0x%04x muxval 0x%02x\n",
			    name, cfg->reg, cfg->conf);
		}

		/* write the register value (16-bit writes) */
		FUNC6(sc, cfg->reg, cfg->conf);
	}

	FUNC3(cfgtuples);

	return (0);
}