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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int INTR_EXCL ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,void**) ; 
 int FUNC4 (struct resource*) ; 
 int FUNC5 (struct resource*) ; 
 int FUNC6 (struct resource*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child, struct resource *res, int flags,
    driver_filter_t *filt, driver_intr_t *intr, void *arg, void **cookiep)
{
#ifndef INTRNG
	int irq;
#endif

	if ((FUNC5(res) & RF_SHAREABLE) == 0)
		flags |= INTR_EXCL;

#ifdef INTRNG
	return(intr_setup_irq(child, res, filt, intr, arg, flags, cookiep));
#else
	for (irq = FUNC6(res); irq <= FUNC4(res); irq++) {
		FUNC0(FUNC2(child),
		    filt, intr, arg, irq, flags, cookiep);
		FUNC1(irq);
	}
	return (0);
#endif
}