#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct bcm2835_audio_info {TYPE_1__ pch; } ;
struct bcm2835_audio_chinfo {int /*<<< orphan*/  retrieved_samples; int /*<<< orphan*/  submitted_samples; struct bcm2835_audio_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *data, int go)
{
	struct bcm2835_audio_chinfo *ch = data;
	struct bcm2835_audio_info *sc = ch->parent;

	if (!FUNC0(go))
		return (0);

	switch (go) {
	case PCMTRIG_START:
		/* kickstart data flow */
		FUNC3(sc->pch.channel);
		ch->submitted_samples = 0;
		ch->retrieved_samples = 0;
		FUNC1(sc);
		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		FUNC2(sc);
		break;

	default:
		break;
	}
	return 0;
}