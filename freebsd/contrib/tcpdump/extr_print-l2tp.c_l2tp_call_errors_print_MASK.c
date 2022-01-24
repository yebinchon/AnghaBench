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
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo, const u_char *dat, u_int length)
{
	const uint16_t *ptr = (const uint16_t *)dat;
	uint16_t val_h, val_l;

	if (length < 2) {
		FUNC1((ndo, "AVP too short"));
		return;
	}
	ptr++;		/* skip "Reserved" */
	length -= 2;

	if (length < 4) {
		FUNC1((ndo, "AVP too short"));
		return;
	}
	val_h = FUNC0(ptr); ptr++; length -= 2;
	val_l = FUNC0(ptr); ptr++; length -= 2;
	FUNC1((ndo, "CRCErr=%u ", (val_h<<16) + val_l));

	if (length < 4) {
		FUNC1((ndo, "AVP too short"));
		return;
	}
	val_h = FUNC0(ptr); ptr++; length -= 2;
	val_l = FUNC0(ptr); ptr++; length -= 2;
	FUNC1((ndo, "FrameErr=%u ", (val_h<<16) + val_l));

	if (length < 4) {
		FUNC1((ndo, "AVP too short"));
		return;
	}
	val_h = FUNC0(ptr); ptr++; length -= 2;
	val_l = FUNC0(ptr); ptr++; length -= 2;
	FUNC1((ndo, "HardOver=%u ", (val_h<<16) + val_l));

	if (length < 4) {
		FUNC1((ndo, "AVP too short"));
		return;
	}
	val_h = FUNC0(ptr); ptr++; length -= 2;
	val_l = FUNC0(ptr); ptr++; length -= 2;
	FUNC1((ndo, "BufOver=%u ", (val_h<<16) + val_l));

	if (length < 4) {
		FUNC1((ndo, "AVP too short"));
		return;
	}
	val_h = FUNC0(ptr); ptr++; length -= 2;
	val_l = FUNC0(ptr); ptr++; length -= 2;
	FUNC1((ndo, "Timeout=%u ", (val_h<<16) + val_l));

	if (length < 4) {
		FUNC1((ndo, "AVP too short"));
		return;
	}
	val_h = FUNC0(ptr); ptr++;
	val_l = FUNC0(ptr); ptr++;
	FUNC1((ndo, "AlignErr=%u ", (val_h<<16) + val_l));
}