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
typedef  int /*<<< orphan*/  supply_node ;
struct reg_def {char* supply_name; } ;
struct as3722_softc {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent_name; } ;
struct as3722_regnode_init_def {int ext_control; int enable_tracking; TYPE_1__ reg_init_def; } ;
typedef  int /*<<< orphan*/  prop_name ;
typedef  int phandle_t ;

/* Variables and functions */
 int FUNC0 (int,char*,int*,int) ; 
 int FUNC1 (int,char*,void**) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC8(struct as3722_softc *sc, phandle_t node, struct reg_def *def,
struct as3722_regnode_init_def *init_def)
{
	int rv;
	phandle_t parent, supply_node;
	char prop_name[64]; /* Maximum OFW property name length. */

	rv = FUNC6(sc->dev, node,
	    &init_def->reg_init_def);

	rv = FUNC0(node, "ams,ext-control", &init_def->ext_control,
	    sizeof(init_def->ext_control));
	if (rv <= 0)
		init_def->ext_control = 0;
	if (init_def->ext_control > 3) {
		FUNC5(sc->dev,
		    "Invalid value for ams,ext-control property: %d\n",
		    init_def->ext_control);
		init_def->ext_control = 0;
	}
	if (FUNC2(node, "ams,enable-tracking"))
		init_def->enable_tracking = 1;


	/* Get parent supply. */
	if (def->supply_name == NULL)
		 return;

	parent = FUNC4(node);
	FUNC7(prop_name, sizeof(prop_name), "%s-supply",
	    def->supply_name);
	rv = FUNC0(parent, prop_name, &supply_node,
	    sizeof(supply_node));
	if (rv <= 0)
		return;
	supply_node = FUNC3(supply_node);
	rv = FUNC1(supply_node, "regulator-name",
	    (void **)&init_def->reg_init_def.parent_name);
	if (rv <= 0)
		init_def->reg_init_def.parent_name = NULL;
}