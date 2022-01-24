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
struct bcm2835_audio_info {scalar_t__ vchi_handle; int /*<<< orphan*/  vchi_instance; } ;

/* Variables and functions */
 scalar_t__ VCHIQ_SERVICE_HANDLE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct bcm2835_audio_info *sc)
{
	int success;

	if (sc->vchi_handle != VCHIQ_SERVICE_HANDLE_INVALID) {
		success = FUNC2(sc->vchi_handle);
		if (success != 0)
			FUNC0("vchi_service_close failed: %d\n", success);
		FUNC3(sc->vchi_handle);
		sc->vchi_handle = VCHIQ_SERVICE_HANDLE_INVALID;
	}

	FUNC1(sc->vchi_instance);
}