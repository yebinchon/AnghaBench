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
struct cpsw_softc {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_CPDMA_CPDMA_EOI_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_softc*) ; 
 int FUNC3 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cpsw_softc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct cpsw_softc *sc;

	sc = (struct cpsw_softc *)arg;
	FUNC1(sc);
	if (FUNC3(sc, FUNC0(0)) == 0xfffffffc)
		FUNC6(sc, &sc->tx, 0xfffffffc);
	FUNC4(sc);
	FUNC5(sc, CPSW_CPDMA_CPDMA_EOI_VECTOR, 2);
	FUNC2(sc);
}