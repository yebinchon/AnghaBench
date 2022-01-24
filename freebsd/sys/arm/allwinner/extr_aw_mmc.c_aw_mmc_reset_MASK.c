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
typedef  int uint32_t ;
struct aw_mmc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AW_MMC_GCTL ; 
 int AW_MMC_GCTL_RESET ; 
 int FUNC0 (struct aw_mmc_softc*,int /*<<< orphan*/ ) ; 
 int AW_MMC_RESET_RETRY ; 
 int /*<<< orphan*/  FUNC1 (struct aw_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ETIMEDOUT ; 

__attribute__((used)) static int
FUNC3(struct aw_mmc_softc *sc)
{
	uint32_t reg;
	int timeout;

	reg = FUNC0(sc, AW_MMC_GCTL);
	reg |= AW_MMC_GCTL_RESET;
	FUNC1(sc, AW_MMC_GCTL, reg);
	timeout = AW_MMC_RESET_RETRY;
	while (--timeout > 0) {
		if ((FUNC0(sc, AW_MMC_GCTL) & AW_MMC_GCTL_RESET) == 0)
			break;
		FUNC2(100);
	}
	if (timeout == 0)
		return (ETIMEDOUT);

	return (0);
}