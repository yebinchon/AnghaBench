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
struct gic_v3_irqsrc {int /*<<< orphan*/  gi_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EOIR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct intr_irqsrc *isrc)
{
	struct gic_v3_irqsrc *gi = (struct gic_v3_irqsrc *)isrc;

	FUNC1(dev, isrc);
	FUNC0(EOIR1, gi->gi_irq);
}