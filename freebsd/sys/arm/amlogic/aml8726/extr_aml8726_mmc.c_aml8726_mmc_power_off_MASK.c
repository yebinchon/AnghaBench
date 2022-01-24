#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pol; int /*<<< orphan*/  pin; int /*<<< orphan*/ * dev; } ;
struct aml8726_mmc_softc {TYPE_1__ pwr_en; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct aml8726_mmc_softc *sc)
{

	if (sc->pwr_en.dev == NULL)
		return (0);

	return (FUNC0(sc->pwr_en.dev, sc->pwr_en.pin,
	    FUNC1(sc->pwr_en.pol)));
}