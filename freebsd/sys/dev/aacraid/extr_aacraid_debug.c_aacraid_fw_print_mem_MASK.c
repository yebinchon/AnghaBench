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
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct aac_softc {int /*<<< orphan*/  FwDebugFlags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEBUG_FLAGS_NO_HEADERS_B ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,unsigned long,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

void FUNC2(struct aac_softc *sc, unsigned long PrintFlags, u_int8_t *Addr, int Count)
{
	int Offset, i;
	u_int32_t DebugFlags = 0;
	char Buffer[100];
	char *LineBuffer_P;

	/*
	 * If we have an HBA structure, save off the flags and set the no
	 * headers flag so we don't have garbage between our lines of data
	 */
	if (sc != NULL) {
		DebugFlags = sc->FwDebugFlags;
		sc->FwDebugFlags |= FW_DEBUG_FLAGS_NO_HEADERS_B;
	}

	Offset = 0;

	/*
	 * Loop through all the data
	 */
	while (Offset < Count) {
		/*
		 * We will format each line into a buffer and then print out
		 * the entire line so set the pointer to the beginning of the
		 * buffer
		 */
		LineBuffer_P = Buffer;

		/*
		 * Set up the address in HEX
		 */
		FUNC1(LineBuffer_P, "\n%04x  ", Offset);
		LineBuffer_P += 6;

		/*
		 * Set up 16 bytes in HEX format
		 */
		for (i = 0; i < 16; ++i) {
			/*
			 * If we are past the count of data bytes to output,
			 * pad with blanks
			 */
			if ((Offset + i) >= Count)
				FUNC1 (LineBuffer_P, "   ");
			else
			  	FUNC1 (LineBuffer_P, "%02x ", Addr[Offset+i]);
			LineBuffer_P += 3;

			/*
			 * At the mid point we will put in a divider
			 */
			if (i == 7) {
				FUNC1 (LineBuffer_P, "- ");
				LineBuffer_P += 2;
			}
		}
		/*
		 * Now do the same 16 bytes at the end of the line in ASCII
		 * format
		 */
		FUNC1 (LineBuffer_P, "  ");
		LineBuffer_P += 2;
		for (i = 0; i < 16; ++i) {
			/*
			 * If all data processed, OUT-O-HERE
			 */
			if ((Offset + i) >= Count)
				break;

			/*
			 * If this is a printable ASCII character, convert it
			 */
			if ((Addr[Offset+i] > 0x1F) && (Addr[Offset+i] < 0x7F))
				FUNC1 (LineBuffer_P, "%c", Addr[Offset+i]);
			else
				FUNC1 (LineBuffer_P, ".");
			++LineBuffer_P;
		}
		/*
		 * The line is now formatted, so print it out
		 */
		FUNC0(sc, PrintFlags, "%s", Buffer);

		/*
		 * Bump the offset by 16 for the next line
		 */
		Offset += 16;

	}

	/*
	 * Restore the saved off flags
	 */
	if (sc != NULL)
		sc->FwDebugFlags = DebugFlags;
}