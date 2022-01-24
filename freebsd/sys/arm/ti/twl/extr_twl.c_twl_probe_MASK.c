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
struct twl_softc {int sc_type; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  TWL_DEVICE_4030 131 
#define  TWL_DEVICE_6025 130 
#define  TWL_DEVICE_6030 129 
#define  TWL_DEVICE_UNKNOWN 128 
 struct twl_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	phandle_t node;
	const char *compat;
	int len, l;
	struct twl_softc *sc;

	if ((compat = FUNC3(dev)) == NULL)
		return (ENXIO);

	if ((node = FUNC4(dev)) == 0)
		return (ENXIO);

	/* Get total 'compatible' prop len */
	if ((len = FUNC0(node, "compatible")) <= 0)
		return (ENXIO);

	sc = FUNC1(dev);
	sc->sc_dev = dev;
	sc->sc_type = TWL_DEVICE_UNKNOWN;

	while (len > 0) {
		if (FUNC6(compat, "ti,twl6030", 10) == 0)
			sc->sc_type = TWL_DEVICE_6030;
		else if (FUNC6(compat, "ti,twl6025", 10) == 0)
			sc->sc_type = TWL_DEVICE_6025;
		else if (FUNC6(compat, "ti,twl4030", 10) == 0)
			sc->sc_type = TWL_DEVICE_4030;
		
		if (sc->sc_type != TWL_DEVICE_UNKNOWN)
			break;

		/* Slide to the next sub-string. */
		l = FUNC5(compat) + 1;
		compat += l;
		len -= l;
	}
	
	switch (sc->sc_type) {
	case TWL_DEVICE_4030:
		FUNC2(dev, "TI TWL4030/TPS659x0 Companion IC");
		break;
	case TWL_DEVICE_6025:
		FUNC2(dev, "TI TWL6025 Companion IC");
		break;
	case TWL_DEVICE_6030:
		FUNC2(dev, "TI TWL6030 Companion IC");
		break;
	case TWL_DEVICE_UNKNOWN:
	default:
		return (ENXIO);
	}
	
	return (0);
}