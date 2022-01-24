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
struct gic_v3_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLR ; 
 int /*<<< orphan*/  GIC_PRIORITY_MIN ; 
 int /*<<< orphan*/  ICC_CTLR_EL1_EOIMODE ; 
 int /*<<< orphan*/  ICC_IGRPEN0_EL1_EN ; 
 int /*<<< orphan*/  IGRPEN1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gic_v3_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct gic_v3_softc *sc)
{
	int err;

	/* Enable access to CPU interface via system registers */
	err = FUNC2(sc);
	if (err != 0)
		return (err);
	/* Priority mask to minimum - accept all interrupts */
	FUNC3(GIC_PRIORITY_MIN);
	/* Disable EOI mode */
	FUNC0(CTLR, ICC_CTLR_EL1_EOIMODE);
	/* Enable group 1 (insecure) interrups */
	FUNC1(IGRPEN1, ICC_IGRPEN0_EL1_EN);

	return (0);
}