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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct bcm2835_audio_chinfo {scalar_t__ playback_state; int spd; int fmt; scalar_t__ available_space; int unsubmittedptr; int submitted_samples; int /*<<< orphan*/  buffer; } ;
struct bcm2835_audio_info {scalar_t__ worker_state; scalar_t__ flags_pending; int volume; int dest; int /*<<< orphan*/  worker_cv; struct bcm2835_audio_chinfo pch; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int AUDIO_PARAMS ; 
 int AUDIO_PLAY ; 
 int AUDIO_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ PLAYBACK_IDLE ; 
 scalar_t__ PLAYBACK_PLAYING ; 
 int VCHIQ_AUDIO_PACKET_SIZE ; 
 scalar_t__ WORKER_RUNNING ; 
 scalar_t__ WORKER_STOPPED ; 
 scalar_t__ FUNC3 (struct bcm2835_audio_chinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_audio_chinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm2835_audio_chinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm2835_audio_chinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm2835_audio_info*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bcm2835_audio_info*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bcm2835_audio_chinfo*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(void *data)
{
	struct bcm2835_audio_info *sc = (struct bcm2835_audio_info *)data;
	struct bcm2835_audio_chinfo *ch = &sc->pch;
	uint32_t speed, format;
	uint32_t volume, dest;
	uint32_t flags;
	uint32_t count, size, readyptr;
	uint8_t *buf;

	ch->playback_state = PLAYBACK_IDLE;

	while (1) {
		if (sc->worker_state != WORKER_RUNNING)
			break;

		FUNC0(sc);
		/*
		 * wait until there are flags set or buffer is ready
		 * to consume more samples
		 */
		while ((sc->flags_pending == 0) &&
		    FUNC3(ch)) {
			FUNC11(&sc->worker_cv, &sc->lock);
		}
		flags = sc->flags_pending;
		/* Clear pending flags */
		sc->flags_pending = 0;
		FUNC1(sc);

		/* Requested to change parameters */
		if (flags & AUDIO_PARAMS) {
			FUNC0(sc);
			speed = ch->spd;
			format = ch->fmt;
			volume = sc->volume;
			dest = sc->dest;
			FUNC1(sc);
			if (ch->playback_state == PLAYBACK_IDLE)
				FUNC8(sc, format, speed);
			FUNC7(sc, volume, dest);
		}

		/* Requested to stop playback */
		if ((flags & AUDIO_STOP) &&
		    (ch->playback_state == PLAYBACK_PLAYING)) {
			FUNC6(ch);
			FUNC0(sc);
			FUNC4(&sc->pch);
			ch->playback_state = PLAYBACK_IDLE;
			FUNC1(sc);
			continue;
		}

		/* Requested to start playback */
		if ((flags & AUDIO_PLAY) &&
		    (ch->playback_state == PLAYBACK_IDLE)) {
			FUNC0(sc);
			ch->playback_state = PLAYBACK_PLAYING;
			FUNC1(sc);
			FUNC5(ch);
		}

		if (ch->playback_state == PLAYBACK_IDLE)
			continue;

		if (FUNC15(ch->buffer) == 0)
			continue;

		count = FUNC15(ch->buffer);
		size = FUNC17(ch->buffer);
		readyptr = FUNC16(ch->buffer);

		FUNC0(sc);
		if (readyptr + count > size)
			count = size - readyptr;
		count = FUNC13(count, ch->available_space);
		count -= (count % VCHIQ_AUDIO_PACKET_SIZE);
		FUNC1(sc);

		if (count < VCHIQ_AUDIO_PACKET_SIZE)
			continue;

		buf = (uint8_t*)FUNC14(ch->buffer) + readyptr;

		FUNC9(ch, buf, count);
		FUNC0(sc);
		ch->unsubmittedptr = (ch->unsubmittedptr + count) % FUNC17(ch->buffer);
		ch->available_space -= count;
		ch->submitted_samples += count;
		FUNC2(ch->available_space >= 0, ("ch->available_space == %d\n", ch->available_space));
		FUNC1(sc);
	}

	FUNC0(sc);
	sc->worker_state = WORKER_STOPPED;
	FUNC10(&sc->worker_cv);
	FUNC1(sc);

	FUNC12(0);
}