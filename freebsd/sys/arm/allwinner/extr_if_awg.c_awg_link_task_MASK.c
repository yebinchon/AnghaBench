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
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct awg_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg, int pending)
{
	struct awg_softc *sc;

	sc = arg;

	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);
}