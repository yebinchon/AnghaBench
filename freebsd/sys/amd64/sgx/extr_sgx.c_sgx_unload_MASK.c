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
struct sgx_softc {int state; int /*<<< orphan*/  mtx; int /*<<< orphan*/  mtx_encls; int /*<<< orphan*/  vmem_epc; int /*<<< orphan*/  sgx_cdev; int /*<<< orphan*/  enclaves; } ;

/* Variables and functions */
 int EBUSY ; 
 int SGX_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sgx_softc*) ; 
 struct sgx_softc sgx_sc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void)
{
	struct sgx_softc *sc;

	sc = &sgx_sc;

	if ((sc->state & SGX_STATE_RUNNING) == 0)
		return (0);

	FUNC3(&sc->mtx);
	if (!FUNC0(&sc->enclaves)) {
		FUNC4(&sc->mtx);
		return (EBUSY);
	}
	sc->state &= ~SGX_STATE_RUNNING;
	FUNC4(&sc->mtx);

	FUNC1(sc->sgx_cdev);

	FUNC6(sc->vmem_epc);
	FUNC5(sc);

	FUNC2(&sc->mtx_encls);
	FUNC2(&sc->mtx);

	return (0);
}