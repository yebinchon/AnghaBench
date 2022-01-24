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
typedef  int uint32_t ;
struct ahci_controller {int /*<<< orphan*/  r_mem; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SATA_P0PHYCR ; 
 int /*<<< orphan*/  SATA_P0PHYSR ; 
 int SATA_P0PHYSR_CR_ACK ; 

__attribute__((used)) static int
FUNC3(struct ahci_controller* sc, uint32_t bitmask, bool on)
{
	uint32_t v;
	int timeout;
	bool state;

	v = FUNC0(sc->r_mem, SATA_P0PHYCR);
	if (on) {
		v |= bitmask;
	} else {
		v &= ~bitmask;
	}
	FUNC1(sc->r_mem, SATA_P0PHYCR, v);

	for (timeout = 5000; timeout > 0; --timeout) {
		v = FUNC0(sc->r_mem, SATA_P0PHYSR);
		state = (v & SATA_P0PHYSR_CR_ACK) == SATA_P0PHYSR_CR_ACK;
		if(state == on) {
			break;
		}
		FUNC2(100);
	}

	if (timeout > 0) {
		return (0);
	}

	return (ETIMEDOUT);
}