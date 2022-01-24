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
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct awg_softc*) ; 
 struct awg_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(if_t ifp)
{
	struct awg_softc *sc;

	sc = FUNC3(ifp);

	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);
}