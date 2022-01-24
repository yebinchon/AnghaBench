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
struct ti_gpio_softc {TYPE_1__* sc_isrcs; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct intr_irqsrc tgi_isrc; } ;

/* Variables and functions */
 struct ti_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ti_gpio_softc*,struct intr_map_data*,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
	int error;
	u_int irq;
	struct ti_gpio_softc *sc = FUNC0(dev);

	error = FUNC1(sc, data, &irq, NULL);
	if (error == 0)
		*isrcp = &sc->sc_isrcs[irq].tgi_isrc;
	return (error);
}