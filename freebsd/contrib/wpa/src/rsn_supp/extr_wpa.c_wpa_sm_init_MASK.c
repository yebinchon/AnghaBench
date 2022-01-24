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
struct wpa_sm_ctx {int /*<<< orphan*/  msg_ctx; } ;
struct wpa_sm {int renew_snonce; int dot11RSNAConfigPMKLifetime; int dot11RSNAConfigPMKReauthThreshold; int dot11RSNAConfigSATimeout; struct wpa_sm_ctx* ctx; int /*<<< orphan*/ * pmksa; int /*<<< orphan*/  pmksa_candidates; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_sm*) ; 
 struct wpa_sm* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct wpa_sm*,struct wpa_sm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wpa_sm_pmksa_free_cb ; 

struct wpa_sm * FUNC5(struct wpa_sm_ctx *ctx)
{
	struct wpa_sm *sm;

	sm = FUNC2(sizeof(*sm));
	if (sm == NULL)
		return NULL;
	FUNC0(&sm->pmksa_candidates);
	sm->renew_snonce = 1;
	sm->ctx = ctx;

	sm->dot11RSNAConfigPMKLifetime = 43200;
	sm->dot11RSNAConfigPMKReauthThreshold = 70;
	sm->dot11RSNAConfigSATimeout = 60;

	sm->pmksa = FUNC3(wpa_sm_pmksa_free_cb, sm, sm);
	if (sm->pmksa == NULL) {
		FUNC4(sm->ctx->msg_ctx, MSG_ERROR,
			"RSN: PMKSA cache initialization failed");
		FUNC1(sm);
		return NULL;
	}

	return sm;
}