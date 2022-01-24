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
typedef  scalar_t__ uint32_t ;
struct mv_cp110_icu_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int /*<<< orphan*/  isrc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ICU_INT_EDGE ; 
 scalar_t__ ICU_INT_ENABLE ; 
 scalar_t__ INTR_MAP_DATA_FDT ; 
 scalar_t__ IRQ_TYPE_LEVEL_HIGH ; 
 int FUNC1 (int /*<<< orphan*/ ,struct intr_map_data*,struct intr_irqsrc**) ; 
 scalar_t__ FUNC2 (struct mv_cp110_icu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_cp110_icu_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mv_cp110_icu_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intr_map_data* FUNC5 (struct mv_cp110_icu_softc*,struct intr_map_data*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
	struct mv_cp110_icu_softc *sc;
	struct intr_map_data_fdt *daf;
	uint32_t reg, irq_no, irq_type;
	int ret;

	sc = FUNC4(dev);

	if (data->type != INTR_MAP_DATA_FDT)
		return (ENOTSUP);

	/* Parse original */
	daf = (struct intr_map_data_fdt *)data;
	if (daf->ncells != 2)
		return (EINVAL);
	irq_no = daf->cells[0];
	irq_type = daf->cells[1];
	data = FUNC5(sc, data);
	if (data == NULL)
		return (EINVAL);

	reg = FUNC2(sc, FUNC0(irq_no));
	reg |= ICU_INT_ENABLE;
	if (irq_type == IRQ_TYPE_LEVEL_HIGH)
		reg &= ~ICU_INT_EDGE;
	else
		reg |= ICU_INT_EDGE;
	FUNC3(sc, FUNC0(irq_no), reg);

	ret = FUNC1(sc->parent, data, isrcp);
	(*isrcp)->isrc_dev = sc->dev;
	return (ret);
}