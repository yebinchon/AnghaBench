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
struct mv_ap806_sei_softc {int dummy; } ;
struct mv_ap806_sei_irqsrc {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_ap806_sei_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_ap806_sei_softc*) ; 
 scalar_t__ FUNC4 (struct mv_ap806_sei_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mv_ap806_sei_softc*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC6(struct mv_ap806_sei_softc *sc,
     struct mv_ap806_sei_irqsrc *sisrc, uint32_t val)
{
	uint32_t tmp;
	int bit;

	bit = FUNC1(sisrc->irq);
	FUNC2(sc);
	tmp = FUNC4(sc, FUNC0(sisrc->irq));
	if (val != 0)
		tmp |= 1 << bit;
	else
		tmp &= ~(1 << bit);
	FUNC5(sc, FUNC0(sisrc->irq), tmp);
	FUNC3(sc);
}