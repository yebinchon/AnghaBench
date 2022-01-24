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
typedef  size_t u_int ;
struct tegra_gpio_softc {TYPE_1__* isrcs; } ;
struct intr_map_data_gpio {int /*<<< orphan*/  gpio_intr_mode; int /*<<< orphan*/  gpio_pin_flags; int /*<<< orphan*/  gpio_pin_num; } ;
struct intr_map_data_fdt {int /*<<< orphan*/  cells; int /*<<< orphan*/  ncells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;

/* Variables and functions */
 int ENOTSUP ; 
 scalar_t__ INTR_MAP_DATA_FDT ; 
 scalar_t__ INTR_MAP_DATA_GPIO ; 
 struct tegra_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
	int rv;
	u_int irq;
	struct tegra_gpio_softc *sc;

	sc = FUNC0(dev);

	if (data->type == INTR_MAP_DATA_FDT) {
		struct intr_map_data_fdt *daf;

		daf = (struct intr_map_data_fdt *)data;
		rv = FUNC1(sc, daf->ncells, daf->cells, &irq,
		    NULL);
	} else if (data->type == INTR_MAP_DATA_GPIO) {
		struct intr_map_data_gpio *dag;

		dag = (struct intr_map_data_gpio *)data;
		rv = FUNC2(sc, dag->gpio_pin_num,
		   dag->gpio_pin_flags, dag->gpio_intr_mode, &irq, NULL);
	} else
		return (ENOTSUP);

	if (rv == 0)
		*isrcp = &sc->isrcs[irq].isrc;
	return (rv);
}