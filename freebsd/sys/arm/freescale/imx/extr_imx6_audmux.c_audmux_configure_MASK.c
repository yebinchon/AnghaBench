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
struct audmux_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int PDCR_RXDSEL_S ; 
 int PTCR_SYN ; 
 int PTCR_TCLKDIR ; 
 int PTCR_TFS_DIR ; 
 int /*<<< orphan*/  FUNC3 (struct audmux_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct audmux_softc *sc,
	int ssi_port, int audmux_port)
{
	uint32_t reg;

	/* Direction: output */
	reg = (PTCR_TFS_DIR | PTCR_TCLKDIR | PTCR_SYN);
	FUNC3(sc, FUNC1(audmux_port), reg);

	/* Select source */
	reg = (FUNC2(ssi_port) << PDCR_RXDSEL_S);
	FUNC3(sc, FUNC0(audmux_port), reg);

	return (0);
}