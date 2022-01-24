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
struct pinmux_softc {int /*<<< orphan*/  dev; } ;
struct pincfg {char* function; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (struct pinmux_softc*,char*,struct pincfg*) ; 
 int FUNC3 (struct pinmux_softc*,int /*<<< orphan*/ ,struct pincfg*,char**,int*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct pinmux_softc *sc, phandle_t node)
{
	struct pincfg cfg;
	char *pins, *pname;
	int i, len, lpins, rv;

	rv = FUNC3(sc, node, &cfg, &pins, &lpins);
	if (rv != 0)
		return (rv);

	len = 0;
	pname = pins;
	do {
		i = FUNC4(pname) + 1;
		rv = FUNC2(sc, pname, &cfg);
		if (rv != 0)
			FUNC1(sc->dev,
			    "Cannot configure pin: %s: %d\n", pname, rv);

		len += i;
		pname += i;
	} while (len < lpins);

	if (pins != NULL)
		FUNC0(pins);
	if (cfg.function != NULL)
		FUNC0(cfg.function);
	return (rv);
}