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
struct aml8726_ccm_softc {int /*<<< orphan*/  dev; struct aml8726_ccm_function* soc; } ;
struct aml8726_ccm_gate {int bits; int /*<<< orphan*/  addr; } ;
struct aml8726_ccm_function {struct aml8726_ccm_gate* gates; int /*<<< orphan*/ * name; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_ccm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_ccm_softc*) ; 
 int FUNC2 (struct aml8726_ccm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_ccm_softc*,int /*<<< orphan*/ ,int) ; 
 int ENXIO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct aml8726_ccm_softc *sc)
{
	struct aml8726_ccm_function *f;
	struct aml8726_ccm_gate *g;
	char *function_name;
	char *functions;
	phandle_t node;
	ssize_t len;
	uint32_t value;

	node = FUNC7(sc->dev);

	len = FUNC4(node, "functions",
	    (void **)&functions);

	if (len < 0) {
		FUNC6(sc->dev, "missing functions attribute in FDT\n");
		return (ENXIO);
	}

	function_name = functions;

	while (len) {
		for (f = sc->soc; f->name != NULL; f++)
			if (FUNC8(f->name, function_name, len) == 0)
				break;

		if (f->name == NULL) {
			/* display message prior to queuing up next string */
			FUNC6(sc->dev,
			    "unknown function attribute %.*s in FDT\n",
			    len, function_name);
		}

		/* queue up next string */
		while (*function_name && len) {
			function_name++;
			len--;
		}
		if (len) {
			function_name++;
			len--;
		}

		if (f->name == NULL)
			continue;

		FUNC0(sc);

		/*
		 * Enable the clock gates necessary for the function.
		 *
		 * In some cases a clock may be shared across functions
		 * (meaning don't disable a clock without ensuring that
		 * it's not required by someone else).
		 */
		for (g = f->gates; g->bits != 0x00000000; g++) {
			value = FUNC2(sc, g->addr);
			value |= g->bits;
			FUNC3(sc, g->addr, value);
		}

		FUNC1(sc);
	}

	FUNC5(functions);

	return (0);
}