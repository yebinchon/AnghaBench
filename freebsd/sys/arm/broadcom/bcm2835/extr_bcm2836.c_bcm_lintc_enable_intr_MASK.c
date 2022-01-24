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
struct intr_irqsrc {int dummy; } ;
struct bcm_lintc_irqsrc {int /*<<< orphan*/  bli_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bcm_lintc_irqsrc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct intr_irqsrc *isrc)
{
	struct bcm_lintc_irqsrc *bli = (struct bcm_lintc_irqsrc *)isrc;

	FUNC0(bli->bli_irq);
	FUNC1(FUNC2(dev), bli);
}