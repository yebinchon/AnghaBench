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
typedef  int u_int ;
struct a10_aintc_softc {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int SW_INT_IRQNO_ENMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a10_aintc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void
FUNC4(struct a10_aintc_softc *sc, u_int irq)
{

	if (irq != SW_INT_IRQNO_ENMI)
		return;
	FUNC2(&sc->mtx);
	FUNC1(sc, FUNC0(0),
	    (1 << SW_INT_IRQNO_ENMI));
	FUNC3(&sc->mtx);
}