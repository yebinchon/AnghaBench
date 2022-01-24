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
struct cpsw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_MIIBUS_DELAY ; 
 int CPSW_MIIBUS_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MDIO_PHYACCESS_GO ; 
 int FUNC1 (struct cpsw_softc*,int) ; 

__attribute__((used)) static int
FUNC2(struct cpsw_softc *sc, uint32_t reg)
{
	uint32_t r, retries = CPSW_MIIBUS_RETRIES;

	while (--retries) {
		r = FUNC1(sc, reg);
		if ((r & MDIO_PHYACCESS_GO) == 0)
			return (1);
		FUNC0(CPSW_MIIBUS_DELAY);
	}

	return (0);
}