#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct as3722_softc {int nregs; struct as3722_reg_sc** regs; int /*<<< orphan*/  dev; } ;
struct as3722_reg_sc {int dummy; } ;
typedef  scalar_t__ phandle_t ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_AS3722_REG ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct as3722_reg_sc* FUNC0 (struct as3722_softc*,scalar_t__,TYPE_1__*) ; 
 TYPE_1__* as3722s_def ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct as3722_reg_sc** FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 

int
FUNC5(struct as3722_softc *sc, phandle_t node)
{
	struct as3722_reg_sc *reg;
	phandle_t child, rnode;
	int i;

	rnode = FUNC4(node, "regulators");
	if (rnode <= 0) {
		FUNC1(sc->dev, " Cannot find regulators subnode\n");
		return (ENXIO);
	}

	sc->nregs = FUNC3(as3722s_def);
	sc->regs = FUNC2(sizeof(struct as3722_reg_sc *) * sc->nregs,
	    M_AS3722_REG, M_WAITOK | M_ZERO);


	/* Attach all known regulators if exist in DT. */
	for (i = 0; i < sc->nregs; i++) {
		child = FUNC4(rnode, as3722s_def[i].name);
		if (child == 0) {
			if (bootverbose)
				FUNC1(sc->dev,
				    "Regulator %s missing in DT\n",
				    as3722s_def[i].name);
			continue;
		}
		reg = FUNC0(sc, child, as3722s_def + i);
		if (reg == NULL) {
			FUNC1(sc->dev, "Cannot attach regulator: %s\n",
			    as3722s_def[i].name);
			return (ENXIO);
		}
		sc->regs[i] = reg;
	}
	return (0);
}