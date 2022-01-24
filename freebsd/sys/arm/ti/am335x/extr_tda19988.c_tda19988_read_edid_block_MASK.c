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
struct tda19988_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDID_LENGTH ; 
 int INT_FLAGS_2_EDID_BLK_RD ; 
 int MAX_READ_ATTEMPTS ; 
 int /*<<< orphan*/  TDA_DDC_ADDR ; 
 int /*<<< orphan*/  TDA_DDC_OFFS ; 
 int /*<<< orphan*/  TDA_DDC_SEGM ; 
 int /*<<< orphan*/  TDA_DDC_SEGM_ADDR ; 
 int /*<<< orphan*/  TDA_EDID_CTRL ; 
 int /*<<< orphan*/  TDA_EDID_DATA0 ; 
 int /*<<< orphan*/  TDA_INT_FLAGS_2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct tda19988_softc*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tda19988_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tda19988_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tda19988_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tda19988_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct tda19988_softc *sc, uint8_t *buf, int block)
{
	int attempt, err;
	uint8_t data;

	err = 0;

	FUNC4(sc, TDA_INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);

	/* Block 0 */
	FUNC5(sc, TDA_DDC_ADDR, 0xa0);
	FUNC5(sc, TDA_DDC_OFFS, (block % 2) ? 128 : 0);
	FUNC5(sc, TDA_DDC_SEGM_ADDR, 0x60);
	FUNC5(sc, TDA_DDC_SEGM, block / 2);

	FUNC5(sc, TDA_EDID_CTRL, 1);
	FUNC5(sc, TDA_EDID_CTRL, 0);

	data = 0;
	for (attempt = 0; attempt < MAX_READ_ATTEMPTS; attempt++) {
		FUNC3(sc, TDA_INT_FLAGS_2, &data);
		if (data & INT_FLAGS_2_EDID_BLK_RD)
			break;
		FUNC0("EDID", 1);
	}

	if (attempt == MAX_READ_ATTEMPTS) {
		err = -1;
		goto done;
	}

	if (FUNC1(sc, TDA_EDID_DATA0, buf, EDID_LENGTH) != 0) {
		err = -1;
		goto done;
	}

done:
	FUNC2(sc, TDA_INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);

	return (err);
}