#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bcm2835_audio_info {int /*<<< orphan*/  vchi_handle; int /*<<< orphan*/  vchi_instance; int /*<<< orphan*/  vchi_connection; } ;
struct TYPE_3__ {int member_7; int member_8; int /*<<< orphan*/  member_9; struct bcm2835_audio_info* member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SERVICE_CREATION_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC_AUDIOSERV_MIN_VER ; 
 int /*<<< orphan*/  VC_AUDIOSERV_VER ; 
 int /*<<< orphan*/  VC_AUDIO_SERVER_NAME ; 
 int /*<<< orphan*/  bcm2835_audio_callback ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bcm2835_audio_info *sc)
{
	int status;

	/* Initialize and create a VCHI connection */
	status = FUNC3(&sc->vchi_instance);
	if (status != 0) {
		FUNC1("vchi_initialise failed: %d\n", status);
		return;
	}

	status = FUNC2(NULL, 0, sc->vchi_instance);
	if (status != 0) {
		FUNC1("vchi_connect failed: %d\n", status);
		return;
	}

	SERVICE_CREATION_T params = {
	    FUNC0(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
	    VC_AUDIO_SERVER_NAME,   /* 4cc service code */
	    sc->vchi_connection,    /* passed in fn pointers */
	    0,  /* rx fifo size */
	    0,  /* tx fifo size */
	    bcm2835_audio_callback,    /* service callback */
	    sc,   /* service callback parameter */
	    1,
	    1,
	    0   /* want crc check on bulk transfers */
	};

	status = FUNC4(sc->vchi_instance, &params,
	    &sc->vchi_handle);

	if (status != 0)
		sc->vchi_handle = VCHIQ_SERVICE_HANDLE_INVALID;
}