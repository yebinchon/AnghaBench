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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct aw_spi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AW_SPI_CCR ; 
 int /*<<< orphan*/  FUNC0 (struct aw_spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct aw_spi_softc*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct aw_spi_softc*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct aw_spi_softc *sc, uint64_t clock)
{
	uint64_t best_ccr1, best_ccr2;
	uint32_t ccr, ccr1, ccr2;

	best_ccr1 = FUNC1(sc, clock, &ccr1);
	best_ccr2 = FUNC2(sc, clock, &ccr2);

	if (best_ccr1 == clock) {
		ccr = ccr1;
	} else if (best_ccr2 == clock) {
		ccr = ccr2;
	} else {
		if ((clock - best_ccr1) < (clock - best_ccr2))
			ccr = ccr1;
		else
			ccr = ccr2;
	}

	FUNC0(sc, AW_SPI_CCR, ccr);
}