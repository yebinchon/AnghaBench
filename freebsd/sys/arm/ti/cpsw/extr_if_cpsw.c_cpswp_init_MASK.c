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
struct cpswp_softc {int /*<<< orphan*/  swsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct cpswp_softc *sc = arg;

	FUNC0(sc->swsc, (""));
	FUNC1(sc);
	FUNC3(arg);
	FUNC2(sc);
}