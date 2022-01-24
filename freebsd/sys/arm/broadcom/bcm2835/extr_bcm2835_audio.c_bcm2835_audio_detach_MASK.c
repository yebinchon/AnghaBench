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
struct bcm2835_audio_info {scalar_t__ worker_state; int /*<<< orphan*/  worker_cv; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ WORKER_STOPPED ; 
 scalar_t__ WORKER_STOPPING ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm2835_audio_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct bcm2835_audio_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	int r;
	struct bcm2835_audio_info *sc;
	sc = FUNC8(dev);

	/* Stop worker thread */
	FUNC0(sc);
	sc->worker_state = WORKER_STOPPING;
	FUNC4(&sc->worker_cv);
	/* Wait for thread to exit */
	while (sc->worker_state != WORKER_STOPPED)
		FUNC5(&sc->worker_cv, &sc->lock);
	FUNC1(sc);

	r = FUNC9(dev);
	if (r)
		return r;

	FUNC7(&sc->lock);
	FUNC3(&sc->worker_cv);

	FUNC2(sc);

    	FUNC6(sc, M_DEVBUF);

	return 0;
}