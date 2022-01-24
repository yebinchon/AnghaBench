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
struct sc_info {struct sai_rate* sr; } ;
struct sai_rate {int div; int /*<<< orphan*/  mfd; int /*<<< orphan*/  mfn; int /*<<< orphan*/  mfi; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2S_TCR2 ; 
 int FUNC0 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sc_info *sc)
{
	struct sai_rate *sr;
	int reg;

	sr = sc->sr;

	/*
	 * Manual says that TCR/RCR registers must not be
	 * altered when TCSR[TE] is set.
	 * We ignore it since we have problem sometimes
	 * after re-enabling transmitter (DMA goes stall).
	 */

	reg = FUNC0(sc, I2S_TCR2);
	reg &= ~(0xff << 0);
	reg |= (sr->div << 0);
	FUNC1(sc, I2S_TCR2, reg);

	FUNC2(sr->mfi, sr->mfn, sr->mfd);
}