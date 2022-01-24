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
typedef  scalar_t__ u_int32_t ;
struct aac_softc {unsigned long DebugOffset; int /*<<< orphan*/  DebugFlags; scalar_t__ FwDebugFlags; scalar_t__ FwDebugBufferSize; scalar_t__ DebugHeaderSize; int /*<<< orphan*/  aac_regs_res1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct aac_softc*,int) ; 
 int /*<<< orphan*/  AAC_MONKER_GETDRVPROP ; 
 int /*<<< orphan*/  aacraid_debug_flags ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct aac_softc *sc)
{
	u_int32_t MonDriverBufferPhysAddrLow = 0;
	u_int32_t MonDriverBufferPhysAddrHigh = 0;
	u_int32_t MonDriverBufferSize = 0;
	u_int32_t MonDriverHeaderSize = 0;

	/*
	 * Get the firmware print buffer parameters from the firmware
	 * If the command was successful map in the address.
	 */
	if (!FUNC1(sc, AAC_MONKER_GETDRVPROP, 0, 0, 0, 0, NULL, NULL)) {
		MonDriverBufferPhysAddrLow = FUNC0(sc, 1);
		MonDriverBufferPhysAddrHigh = FUNC0(sc, 2);
		MonDriverBufferSize = FUNC0(sc, 3);
		MonDriverHeaderSize = FUNC0(sc, 4); 
		if (MonDriverBufferSize) {
			unsigned long Offset = MonDriverBufferPhysAddrLow
				- FUNC3(sc->aac_regs_res1);

			/*
			 * See if the address is already mapped in and if so set it up
			 * from the base address
			 */
			if ((MonDriverBufferPhysAddrHigh == 0) && 
				(Offset + MonDriverBufferSize < 
				FUNC2(sc->aac_regs_res1))) {
				sc->DebugOffset = Offset;
				sc->DebugHeaderSize = MonDriverHeaderSize;
				sc->FwDebugBufferSize = MonDriverBufferSize;
				sc->FwDebugFlags = 0;
				sc->DebugFlags = aacraid_debug_flags;
				return 1;
			}
		}
	}

	/*
	 * The GET_DRIVER_BUFFER_PROPERTIES command failed
	 */
	return 0;
}