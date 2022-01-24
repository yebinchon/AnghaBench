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
struct bcm2835_audio_info {int /*<<< orphan*/  worker_cv; int /*<<< orphan*/  flags_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_PLAY ; 
 int /*<<< orphan*/  AUDIO_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bcm2835_audio_info *sc)
{
	FUNC0(sc);
	sc->flags_pending &= ~(AUDIO_PLAY);
	sc->flags_pending |= AUDIO_STOP;
	FUNC2(&sc->worker_cv);
	FUNC1(sc);
}