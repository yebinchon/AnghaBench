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
struct tzic_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tzic_softc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void
FUNC2(struct tzic_softc *sc, u_int irq)
{

	FUNC1(sc, FUNC0(irq >> 5), (1u << (irq & 0x1f)));
}