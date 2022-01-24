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
struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int /*<<< orphan*/  sdma_channel; int /*<<< orphan*/  dev; int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int SIER_TDMAE ; 
 int /*<<< orphan*/  SSI_SIER ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct sc_pcminfo *scp)
{
	struct sc_info *sc;
	int reg;

	sc = scp->sc;

	if (FUNC2(sc->sdma_channel, sc->conf) != 0) {
		FUNC1(sc->dev, "Can't configure sDMA\n");
		return (-1);
	}

	/* Enable DMA interrupt */
	reg = (SIER_TDMAE);
	FUNC0(sc, SSI_SIER, reg);

	FUNC3(sc->sdma_channel);

	return (0);
}