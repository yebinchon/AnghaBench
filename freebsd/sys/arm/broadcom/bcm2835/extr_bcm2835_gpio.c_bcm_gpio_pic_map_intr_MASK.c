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
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
struct bcm_gpio_softc {TYPE_1__* sc_isrcs; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct intr_irqsrc bgi_isrc; } ;

/* Variables and functions */
 int FUNC0 (struct bcm_gpio_softc*,struct intr_map_data*,size_t*,int /*<<< orphan*/ *) ; 
 struct bcm_gpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
	int error;
	u_int irq;
	struct bcm_gpio_softc *sc = FUNC1(dev);

	error = FUNC0(sc, data, &irq, NULL);
	if (error == 0)
		*isrcp = &sc->sc_isrcs[irq].bgi_isrc;
	return (error);
}