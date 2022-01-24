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
struct eapol_sm {int startWhen; TYPE_1__* ctx; int /*<<< orphan*/  SUPP_PAE_state; int /*<<< orphan*/  cached_pmk; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* aborted_cached ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SUPP_PAE_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC1 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct eapol_sm *sm)
{
	FUNC3(MSG_DEBUG, "RSN: Authenticator did not accept PMKID, "
		   "doing full EAP authentication");
	if (sm == NULL)
		return;
	sm->cached_pmk = FALSE;
	sm->SUPP_PAE_state = SUPP_PAE_CONNECTING;
	FUNC1(sm);

	/* Make sure we do not start sending EAPOL-Start frames first, but
	 * instead move to RESTART state to start EAPOL authentication. */
	sm->startWhen = 3;
	FUNC0(sm);

	if (sm->ctx->aborted_cached)
		sm->ctx->aborted_cached(sm->ctx->ctx);
}