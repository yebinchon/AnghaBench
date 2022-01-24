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
typedef  int /*<<< orphan*/  u_int ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
struct gic_v3_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct intr_irqsrc* FUNC0 (struct gic_v3_softc*,int /*<<< orphan*/ ) ; 
 struct gic_v3_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct intr_map_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
	struct gic_v3_softc *sc;
	int error;
	u_int irq;

	error = FUNC2(dev, data, &irq, NULL, NULL);
	if (error == 0) {
		sc = FUNC1(dev);
		*isrcp = FUNC0(sc, irq);
	}
	return (error);
}