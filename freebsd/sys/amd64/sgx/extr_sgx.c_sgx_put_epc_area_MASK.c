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
struct sgx_softc {int /*<<< orphan*/  epc_pages; scalar_t__ epc_size; scalar_t__ epc_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SGX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct sgx_softc *sc)
{

	FUNC1(sc->epc_base,
	    sc->epc_base + sc->epc_size);

	FUNC0(sc->epc_pages, M_SGX);
}