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
struct bcm_bsc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_BSC_CTRL ; 
 int /*<<< orphan*/  BCM_BSC_CTRL_CLEAR0 ; 
 int BCM_BSC_CTRL_I2CEN ; 
 int /*<<< orphan*/  BCM_BSC_STATUS ; 
 int BCM_BSC_STATUS_CLKT ; 
 int BCM_BSC_STATUS_DONE ; 
 int BCM_BSC_STATUS_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_bsc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_bsc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bcm_bsc_softc *sc)
{

	/* Enable the BSC Controller, disable interrupts. */
	FUNC0(sc, BCM_BSC_CTRL, BCM_BSC_CTRL_I2CEN);
	/* Clear pending interrupts. */
	FUNC0(sc, BCM_BSC_STATUS, BCM_BSC_STATUS_CLKT |
	    BCM_BSC_STATUS_ERR | BCM_BSC_STATUS_DONE);
	/* Clear the FIFO. */
	FUNC1(sc, BCM_BSC_CTRL, BCM_BSC_CTRL_CLEAR0,
	    BCM_BSC_CTRL_CLEAR0);
}