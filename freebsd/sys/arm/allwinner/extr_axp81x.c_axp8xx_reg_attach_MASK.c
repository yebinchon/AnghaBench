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
struct TYPE_2__ {int min_uvolt; int max_uvolt; } ;
struct regnode_init_def {int /*<<< orphan*/  ofw_node; int /*<<< orphan*/  id; TYPE_1__ std_param; } ;
struct regnode {int dummy; } ;
struct axp8xx_regdef {int voltage_min; int voltage_max; int /*<<< orphan*/  id; } ;
struct axp8xx_reg_sc {int /*<<< orphan*/  param; int /*<<< orphan*/  xref; struct axp8xx_regdef* def; int /*<<< orphan*/  base_dev; struct regnode* regnode; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  initdef ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axp8xx_regnode_class ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct regnode_init_def*,int /*<<< orphan*/ ,int) ; 
 struct regnode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct regnode_init_def*) ; 
 struct axp8xx_reg_sc* FUNC4 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct regnode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regnode_init_def*) ; 

__attribute__((used)) static struct axp8xx_reg_sc *
FUNC8(device_t dev, phandle_t node,
    struct axp8xx_regdef *def)
{
	struct axp8xx_reg_sc *reg_sc;
	struct regnode_init_def initdef;
	struct regnode *regnode;

	FUNC2(&initdef, 0, sizeof(initdef));
	if (FUNC7(dev, node, &initdef) != 0)
		return (NULL);
	if (initdef.std_param.min_uvolt == 0)
		initdef.std_param.min_uvolt = def->voltage_min * 1000;
	if (initdef.std_param.max_uvolt == 0)
		initdef.std_param.max_uvolt = def->voltage_max * 1000;
	initdef.id = def->id;
	initdef.ofw_node = node;
	regnode = FUNC3(dev, &axp8xx_regnode_class, &initdef);
	if (regnode == NULL) {
		FUNC1(dev, "cannot create regulator\n");
		return (NULL);
	}

	reg_sc = FUNC4(regnode);
	reg_sc->regnode = regnode;
	reg_sc->base_dev = dev;
	reg_sc->def = def;
	reg_sc->xref = FUNC0(node);
	reg_sc->param = FUNC5(regnode);

	FUNC6(regnode);

	return (reg_sc);
}