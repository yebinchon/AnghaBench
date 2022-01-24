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
struct mii_data {int dummy; } ;
struct awg_softc {int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct awg_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 struct awg_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC5(if_t ifp)
{
	struct awg_softc *sc;
	struct mii_data *mii;
	int error;

	sc = FUNC3(ifp);
	mii = FUNC2(sc->miibus);

	FUNC0(sc);
	error = FUNC4(mii);
	FUNC1(sc);

	return (error);
}