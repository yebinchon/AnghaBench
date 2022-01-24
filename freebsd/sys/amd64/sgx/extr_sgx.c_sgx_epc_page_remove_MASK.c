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
struct sgx_softc {int /*<<< orphan*/  mtx_encls; } ;
struct epc_page {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3(struct sgx_softc *sc,
    struct epc_page *epc)
{

	FUNC0(&sc->mtx_encls);
	FUNC2((void *)epc->base);
	FUNC1(&sc->mtx_encls);
}