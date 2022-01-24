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
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; int isrc_flags; int /*<<< orphan*/  isrc_cpu; } ;
struct bcm_lintc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_lintc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_lintc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int INTR_ISRCF_PPI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 struct bcm_lintc_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
	struct bcm_lintc_softc *sc;

	if (isrc->isrc_handlers == 0 && isrc->isrc_flags & INTR_ISRCF_PPI) {
		sc = FUNC4(dev);
		FUNC0(sc);
		FUNC2(FUNC3(cpuid), &isrc->isrc_cpu);
		FUNC1(sc);
	}
	return (0);
}