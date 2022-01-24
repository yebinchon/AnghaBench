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
typedef  int /*<<< orphan*/  uint32_t ;
struct snd_mixer {int dummy; } ;
struct a10codec_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A10_ADC_ACTL ; 
 int /*<<< orphan*/  A10_DAC_ACTL ; 
 int /*<<< orphan*/  A10_PAMUTE ; 
 int /*<<< orphan*/  A10_PA_EN ; 
 int /*<<< orphan*/  FUNC0 (struct a10codec_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a10codec_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SOUND_MASK_LINE ; 
 int SOUND_MASK_LINE1 ; 
 int SOUND_MASK_MIC ; 
 int SOUND_MASK_RECLEV ; 
 int SOUND_MASK_VOLUME ; 
 struct a10codec_info* FUNC2 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_mixer*,int) ; 

__attribute__((used)) static int
FUNC5(struct snd_mixer *m)
{
	struct a10codec_info *sc = FUNC2(m);
	uint32_t val;

	FUNC3(m, SOUND_MASK_VOLUME | SOUND_MASK_LINE | SOUND_MASK_RECLEV);
	FUNC4(m, SOUND_MASK_LINE | SOUND_MASK_LINE1 | SOUND_MASK_MIC);

	/* Unmute input source to PA */
	val = FUNC0(sc, A10_DAC_ACTL);
	val |= A10_PAMUTE;
	FUNC1(sc, A10_DAC_ACTL, val);

	/* Enable PA */
	val = FUNC0(sc, A10_ADC_ACTL);
	val |= A10_PA_EN;
	FUNC1(sc, A10_ADC_ACTL, val);

	return (0);
}