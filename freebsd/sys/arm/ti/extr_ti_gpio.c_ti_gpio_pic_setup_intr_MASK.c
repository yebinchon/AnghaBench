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
typedef  scalar_t__ u_int ;
struct ti_gpio_softc {int dummy; } ;
struct ti_gpio_irqsrc {scalar_t__ tgi_irq; scalar_t__ tgi_mode; } ;
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 struct ti_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_gpio_softc*,struct ti_gpio_irqsrc*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ti_gpio_softc*,struct intr_map_data*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
	u_int irq;
	uint32_t mode;
	struct ti_gpio_softc *sc;
	struct ti_gpio_irqsrc *tgi;

	if (data == NULL)
		return (ENOTSUP);

	sc = FUNC0(dev);
	tgi = (struct ti_gpio_irqsrc *)isrc;

	/* Get and check config for an interrupt. */
	if (FUNC2(sc, data, &irq, &mode) != 0 || tgi->tgi_irq != irq)
		return (EINVAL);

	/*
	 * If this is a setup for another handler,
	 * only check that its configuration match.
	 */
	if (isrc->isrc_handlers != 0)
		return (tgi->tgi_mode == mode ? 0 : EINVAL);

	FUNC1(sc, tgi, mode);
	return (0);
}