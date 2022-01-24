#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  uint8_t ;
struct enc_fsm_state {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ses_pending_requests; } ;
typedef  TYPE_1__ ses_softc_t ;
struct TYPE_6__ {TYPE_1__* enc_private; } ;
typedef  TYPE_2__ enc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(enc_softc_t *enc, struct enc_fsm_state *state,
    union ccb *ccb, uint8_t **bufp, int error, int xfer_len)
{
	ses_softc_t *ses;

	ses = enc->enc_private;
	/*
	 * Possible errors:
	 *  o Generation count wrong.
	 *  o Some SCSI status error.
	 */
	FUNC1(&ses->ses_pending_requests, error);
	FUNC0(enc);
	return (0);
}