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
typedef  int /*<<< orphan*/  u_int ;
struct tegra_gpio_softc {int dummy; } ;
struct tegra_gpio_irqsrc {scalar_t__ cfgreg; } ;
struct resource {int dummy; } ;
struct intr_map_data_gpio {int /*<<< orphan*/  gpio_intr_mode; int /*<<< orphan*/  gpio_pin_flags; int /*<<< orphan*/  gpio_pin_num; } ;
struct intr_map_data_fdt {int /*<<< orphan*/  cells; int /*<<< orphan*/  ncells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  GPIO_INT_LVL ; 
 int /*<<< orphan*/  GPIO_INT_LVL_MASK ; 
 scalar_t__ INTR_MAP_DATA_FDT ; 
 scalar_t__ INTR_MAP_DATA_GPIO ; 
 struct tegra_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,struct tegra_gpio_irqsrc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 
 int FUNC3 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
	u_int irq;
	uint32_t cfgreg;
	int rv;
	struct tegra_gpio_softc *sc;
	struct tegra_gpio_irqsrc *tgi;

	sc = FUNC0(dev);
	tgi = (struct tegra_gpio_irqsrc *)isrc;

	if (data == NULL)
		return (ENOTSUP);

	/* Get and check config for an interrupt. */
	if (data->type == INTR_MAP_DATA_FDT) {
		struct intr_map_data_fdt *daf;

		daf = (struct intr_map_data_fdt *)data;
		rv = FUNC3(sc, daf->ncells, daf->cells, &irq,
		    &cfgreg);
	} else if (data->type == INTR_MAP_DATA_GPIO) {
		struct intr_map_data_gpio *dag;

		dag = (struct intr_map_data_gpio *)data;
		rv = FUNC4(sc, dag->gpio_pin_num,
		   dag->gpio_pin_flags, dag->gpio_intr_mode, &irq, &cfgreg);
	} else
		return (ENOTSUP);
	if (rv != 0)
		return (EINVAL);

	/*
	 * If this is a setup for another handler,
	 * only check that its configuration match.
	 */
	if (isrc->isrc_handlers != 0)
		return (tgi->cfgreg == cfgreg ? 0 : EINVAL);

	tgi->cfgreg = cfgreg;
	FUNC1(sc, GPIO_INT_LVL, tgi, cfgreg, GPIO_INT_LVL_MASK);
	FUNC2(dev, isrc);

	return (0);
}