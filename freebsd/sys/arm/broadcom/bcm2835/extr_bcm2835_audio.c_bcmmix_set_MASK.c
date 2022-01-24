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
struct bcm2835_audio_info {unsigned int volume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_info*) ; 
#define  SOUND_MIXER_VOLUME 128 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_info*) ; 
 struct bcm2835_audio_info* FUNC3 (struct snd_mixer*) ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
    	struct bcm2835_audio_info *sc = FUNC3(m);

	switch (dev) {
	case SOUND_MIXER_VOLUME:
		FUNC0(sc);
		sc->volume = left;
		FUNC2(sc);
		FUNC1(sc);

		break;

	default:
		break;
	}

    	return left | (left << 8);
}