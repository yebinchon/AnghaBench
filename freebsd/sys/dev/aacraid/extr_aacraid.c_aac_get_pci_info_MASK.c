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
typedef  int /*<<< orphan*/  u_int32_t ;
struct aac_softc {int /*<<< orphan*/  aac_dev; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct aac_softc *sc, caddr_t uptr)
{
	struct aac_pci_info {
		u_int32_t bus;
		u_int32_t slot;
	} pciinf;
	int error;

	FUNC1(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	pciinf.bus = FUNC2(sc->aac_dev);
	pciinf.slot = FUNC3(sc->aac_dev);

	error = FUNC0((caddr_t)&pciinf, uptr,
			sizeof(struct aac_pci_info));

	return (error);
}