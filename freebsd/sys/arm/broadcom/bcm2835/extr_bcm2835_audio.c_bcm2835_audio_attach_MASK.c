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
struct TYPE_2__ {struct bcm2835_audio_info* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct bcm2835_audio_info {TYPE_1__ intr_hook; int /*<<< orphan*/  vchi_handle; int /*<<< orphan*/  worker_cv; int /*<<< orphan*/  lock; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  VCHIQ_AUDIO_BUFFER_SIZE ; 
 int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_INVALID ; 
 int /*<<< orphan*/  bcm2835_audio_delayed_init ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bcm2835_audio_info* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    	struct bcm2835_audio_info *sc;

	sc = FUNC3(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);

	sc->dev = dev;
	sc->bufsz = VCHIQ_AUDIO_BUFFER_SIZE;

	FUNC4(&sc->lock, FUNC2(dev),
	    "bcm_audio_lock", MTX_DEF);
	FUNC1(&sc->worker_cv, "worker_cv");
	sc->vchi_handle = VCHIQ_SERVICE_HANDLE_INVALID;

	/*
	 * We need interrupts enabled for VCHI to work properly,
	 * so delay initialization until it happens.
	 */
	sc->intr_hook.ich_func = bcm2835_audio_delayed_init;
	sc->intr_hook.ich_arg = sc;

	if (FUNC0(&sc->intr_hook) != 0)
		goto no;

    	return 0;

no:
    	return ENXIO;
}