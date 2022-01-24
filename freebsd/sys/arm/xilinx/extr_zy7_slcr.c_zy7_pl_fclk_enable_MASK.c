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
struct zy7_slcr_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zy7_slcr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct zy7_slcr_softc*) ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 
 int /*<<< orphan*/  FUNC6 (struct zy7_slcr_softc*) ; 

int 
FUNC7(int unit)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;

	if (!sc)
		return (-1);

	FUNC1(sc);

	/* Unlock SLCR registers. */
	FUNC6(sc);

	FUNC0(sc, FUNC4(unit), 0);
	FUNC0(sc, FUNC3(unit), 0);

	/* Lock SLCR registers. */
	FUNC5(sc);

	FUNC2(sc);

	return (0);
}