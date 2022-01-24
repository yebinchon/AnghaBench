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
struct awg_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_INT_EN ; 
 int RX_INT_EN ; 
 int TX_BUF_UA_INT_EN ; 
 int TX_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct awg_softc *sc)
{
	/* Enable interrupts */
	FUNC0(sc, EMAC_INT_EN, RX_INT_EN | TX_INT_EN | TX_BUF_UA_INT_EN);
}