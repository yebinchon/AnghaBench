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
typedef  int uint8_t ;
struct edid_info {int edid_ext_block_count; } ;
struct a10hdmi_softc {int /*<<< orphan*/  edid; } ;

/* Variables and functions */
 size_t CEA_DTD ; 
 int DTD_BASIC_AUDIO ; 
 int EDID_LENGTH ; 
 scalar_t__ FUNC0 (struct a10hdmi_softc*,int,int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct edid_info*) ; 

__attribute__((used)) static void
FUNC3(struct a10hdmi_softc *sc, int *phdmi, int *paudio)
{
	struct edid_info ei;
	uint8_t edid[EDID_LENGTH];
	int block;

	*phdmi = *paudio = 0;

	if (FUNC2(sc->edid, &ei) != 0)
		return;

	/* Scan through extension blocks, looking for a CEA-861 block. */
	for (block = 1; block <= ei.edid_ext_block_count; block++) {
		if (FUNC0(sc, block, edid) != 0)
			return;

		if (FUNC1(edid) != 0) {
			*phdmi = 1;
			*paudio = ((edid[CEA_DTD] & DTD_BASIC_AUDIO) != 0);
			return;
		}
	}
}