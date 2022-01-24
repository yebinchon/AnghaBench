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
struct versatile_sic_irqsrc {int /*<<< orphan*/  irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct intr_irqsrc *isrc)
{
	struct versatile_sic_irqsrc *src;

	src = (struct versatile_sic_irqsrc *)isrc;
	FUNC0(src->irq);
	FUNC1(dev, isrc);
}