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
struct emac_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_softc*) ; 

__attribute__((used)) static void
FUNC3(void *xcs)
{
	struct emac_softc *sc;

	sc = (struct emac_softc *)xcs;
	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);
}