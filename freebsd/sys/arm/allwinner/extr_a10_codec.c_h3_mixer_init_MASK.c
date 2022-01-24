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
struct snd_mixer {int dummy; } ;
struct a10codec_info {int /*<<< orphan*/  dev; int /*<<< orphan*/ ** res; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  scalar_t__ phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  analogref ;

/* Variables and functions */
 int ENXIO ; 
 int H3_LINEOUTEN ; 
 int H3_LINEOUT_LSEL ; 
 int H3_LINEOUT_RSEL ; 
 int /*<<< orphan*/  H3_MIC2G_LINEOUT_CTR ; 
 int /*<<< orphan*/  H3_PAEN_CTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SD_F_SOFTPCMVOL ; 
 int SOUND_MASK_IMIX ; 
 int SOUND_MASK_LINE ; 
 int SOUND_MASK_LINE1 ; 
 int SOUND_MASK_MIC ; 
 int SOUND_MASK_PCM ; 
 int SOUND_MASK_RECLEV ; 
 int SOUND_MASK_VOLUME ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a10codec_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct a10codec_info* FUNC4 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct snd_mixer *m)
{
	int rid=1;
	pcell_t reg[2];
	phandle_t analogref;
	struct a10codec_info *sc = FUNC4(m);

	if (FUNC0(FUNC7(sc->dev), "allwinner,codec-analog-controls",
	    &analogref, sizeof(analogref)) <= 0) {
		return (ENXIO);
	}

	if (FUNC0(FUNC1(analogref), "reg",
	    reg, sizeof(reg)) <= 0) {
		return (ENXIO);
	}

	sc->res[1] = FUNC2(sc->dev, SYS_RES_MEMORY, &rid, reg[0],
	    reg[0]+reg[1], reg[1], RF_ACTIVE );

	if (sc->res[1] == NULL) {
		return (ENXIO);
	}

	FUNC5(m, SOUND_MASK_PCM | SOUND_MASK_VOLUME | SOUND_MASK_RECLEV |
	    SOUND_MASK_MIC | SOUND_MASK_LINE | SOUND_MASK_LINE1);
	FUNC6(m, SOUND_MASK_MIC | SOUND_MASK_LINE | SOUND_MASK_LINE1 |
	    SOUND_MASK_IMIX);

	FUNC9(sc->dev, FUNC8(sc->dev) | SD_F_SOFTPCMVOL);

	/* Right & Left LINEOUT enable */
	FUNC3(sc, H3_PAEN_CTR, H3_LINEOUTEN, 0);
	FUNC3(sc, H3_MIC2G_LINEOUT_CTR,
	    H3_LINEOUT_LSEL | H3_LINEOUT_RSEL, 0);

	return (0);
}