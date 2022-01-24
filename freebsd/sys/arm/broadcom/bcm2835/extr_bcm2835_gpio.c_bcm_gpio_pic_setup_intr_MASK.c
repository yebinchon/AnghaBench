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
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {scalar_t__ bgi_irq; scalar_t__ bgi_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct bcm_gpio_softc*,struct intr_map_data*,scalar_t__*,scalar_t__*) ; 
 struct bcm_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
	u_int irq;
	uint32_t mode;
	struct bcm_gpio_softc *sc;
	struct bcm_gpio_irqsrc *bgi;

	if (data == NULL)
		return (ENOTSUP);

	sc = FUNC2(dev);
	bgi = (struct bcm_gpio_irqsrc *)isrc;

	/* Get and check config for an interrupt. */
	if (FUNC1(sc, data, &irq, &mode) != 0 || bgi->bgi_irq != irq)
		return (EINVAL);

	/*
	 * If this is a setup for another handler,
	 * only check that its configuration match.
	 */
	if (isrc->isrc_handlers != 0)
		return (bgi->bgi_mode == mode ? 0 : EINVAL);

	FUNC0(sc, bgi, mode);
	return (0);
}