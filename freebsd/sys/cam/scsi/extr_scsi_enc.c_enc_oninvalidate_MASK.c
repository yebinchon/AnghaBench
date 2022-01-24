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
struct TYPE_2__ {int /*<<< orphan*/  (* softc_invalidate ) (struct enc_softc*) ;} ;
struct enc_softc {int /*<<< orphan*/  enc_dev; int /*<<< orphan*/  status_updater; int /*<<< orphan*/ * enc_daemon; int /*<<< orphan*/  enc_flags; TYPE_1__ enc_vec; } ;
struct cam_periph {int /*<<< orphan*/  path; struct enc_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENC_FLAG_INVALID ; 
 int /*<<< orphan*/  ENC_FLAG_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*) ; 
 int /*<<< orphan*/  enc_async ; 
 int /*<<< orphan*/  enc_devgonecb ; 
 int /*<<< orphan*/  FUNC2 (struct enc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct cam_periph *periph)
{
	struct enc_softc *enc;

	enc = periph->softc;

	enc->enc_flags |= ENC_FLAG_INVALID;

	/* If the sub-driver has an invalidate routine, call it */
	if (enc->enc_vec.softc_invalidate != NULL)
		enc->enc_vec.softc_invalidate(enc);

	/*
	 * Unregister any async callbacks.
	 */
	FUNC4(0, enc_async, periph, periph->path);

	/*
	 * Shutdown our daemon.
	 */
	enc->enc_flags |= ENC_FLAG_SHUTDOWN;
	if (enc->enc_daemon != NULL) {
		/* Signal the ses daemon to terminate. */
		FUNC3(enc->enc_daemon);
	}
	FUNC0(&enc->status_updater);

	FUNC1(enc->enc_dev, enc_devgonecb, periph);
}