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
typedef  int /*<<< orphan*/  uint32_t ;
struct aml8726_rng_softc {int /*<<< orphan*/  ticks; int /*<<< orphan*/  co; } ;
typedef  int /*<<< orphan*/  rn ;

/* Variables and functions */
 int /*<<< orphan*/  AML_RNG_0_REG ; 
 int /*<<< orphan*/  AML_RNG_1_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_rng_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RANDOM_PURE_AML8726 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct aml8726_rng_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct aml8726_rng_softc *sc = arg;
	uint32_t rn[2];

	rn[0] = FUNC0(sc, AML_RNG_0_REG);
	rn[1] = FUNC0(sc, AML_RNG_1_REG);

	FUNC2(rn, sizeof(rn), RANDOM_PURE_AML8726);

	FUNC1(&sc->co, sc->ticks, aml8726_rng_harvest, sc);
}