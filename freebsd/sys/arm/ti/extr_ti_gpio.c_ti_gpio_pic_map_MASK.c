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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct ti_gpio_softc {int dummy; } ;
struct intr_map_data_gpio {int dummy; } ;
struct intr_map_data_fdt {int dummy; } ;
struct intr_map_data {int type; } ;

/* Variables and functions */
 int ENOTSUP ; 
#define  INTR_MAP_DATA_FDT 129 
#define  INTR_MAP_DATA_GPIO 128 
 int FUNC0 (struct ti_gpio_softc*,struct intr_map_data_fdt*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ti_gpio_softc*,struct intr_map_data_gpio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct ti_gpio_softc *sc, struct intr_map_data *data,
    u_int *irqp, uint32_t *modep)
{

	switch (data->type) {
	case INTR_MAP_DATA_FDT:
		return (FUNC0(sc,
		    (struct intr_map_data_fdt *)data, irqp, modep));
	case INTR_MAP_DATA_GPIO:
		return (FUNC1(sc,
		    (struct intr_map_data_gpio *)data, irqp, modep));
	default:
		return (ENOTSUP);
	}
}