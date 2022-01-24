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
struct gic_v3_irqsrc {scalar_t__ gi_trig; int /*<<< orphan*/  gi_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EOIR1 ; 
 scalar_t__ INTR_TRIGGER_EDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(device_t dev, struct intr_irqsrc *isrc)
{
	struct gic_v3_irqsrc *gi = (struct gic_v3_irqsrc *)isrc;

	if (gi->gi_trig == INTR_TRIGGER_EDGE)
		return;

	FUNC0(EOIR1, gi->gi_irq);
}