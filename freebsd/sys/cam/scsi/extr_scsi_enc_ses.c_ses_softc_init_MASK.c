#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  ses_pending_requests; int /*<<< orphan*/  ses_requests; } ;
typedef  TYPE_4__ ses_softc_t ;
typedef  int /*<<< orphan*/  ses_cache_t ;
struct TYPE_12__ {TYPE_4__* private; } ;
struct TYPE_11__ {TYPE_4__* private; } ;
struct TYPE_14__ {TYPE_4__* enc_private; TYPE_3__ enc_daemon_cache; TYPE_2__ enc_cache; int /*<<< orphan*/  enc_fsm_states; int /*<<< orphan*/  enc_vec; TYPE_1__* periph; } ;
typedef  TYPE_5__ enc_softc_t ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_SUBTRACE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 void* FUNC2 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SES_UPDATE_PAGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enc_fsm_states ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ses_enc_vec ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 

int
FUNC6(enc_softc_t *enc)
{
	ses_softc_t *ses_softc;

	FUNC0(enc->periph->path, CAM_DEBUG_SUBTRACE,
	    ("entering enc_softc_init(%p)\n", enc));

	enc->enc_vec = ses_enc_vec;
	enc->enc_fsm_states = enc_fsm_states;

	if (enc->enc_private == NULL)
		enc->enc_private = FUNC2(sizeof(ses_softc_t));
	if (enc->enc_cache.private == NULL)
		enc->enc_cache.private = FUNC2(sizeof(ses_cache_t));
	if (enc->enc_daemon_cache.private == NULL)
		enc->enc_daemon_cache.private =
		     FUNC2(sizeof(ses_cache_t));

	if (enc->enc_private == NULL
	 || enc->enc_cache.private == NULL
	 || enc->enc_daemon_cache.private == NULL) {
		FUNC1(enc->enc_private);
		FUNC1(enc->enc_cache.private);
		FUNC1(enc->enc_daemon_cache.private);
		return (ENOMEM);
	}

	ses_softc = enc->enc_private;
	FUNC3(&ses_softc->ses_requests);
	FUNC3(&ses_softc->ses_pending_requests);

	FUNC4(enc, SES_UPDATE_PAGES);

	// XXX: Move this to the FSM so it doesn't hang init
	if (0) (void) FUNC5(enc, 1);

	return (0);
}