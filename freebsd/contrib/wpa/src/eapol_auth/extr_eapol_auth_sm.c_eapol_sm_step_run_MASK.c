#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct eapol_state_machine {unsigned int auth_pae_state; unsigned int be_auth_state; unsigned int reauth_timer_state; unsigned int auth_key_tx_state; unsigned int key_rx_state; unsigned int ctrl_dir_state; int /*<<< orphan*/  sta; struct eapol_authenticator* eapol; TYPE_1__* eap_if; scalar_t__ eap; scalar_t__ initializing; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* eapol_event ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* aaa_send ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct eapol_authenticator {TYPE_3__ conf; TYPE_2__ cb; } ;
struct TYPE_4__ {int /*<<< orphan*/ * aaaEapRespData; scalar_t__ aaaEapResp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_KEY_TX ; 
 int /*<<< orphan*/  AUTH_PAE ; 
 int /*<<< orphan*/  BE_AUTH ; 
 int /*<<< orphan*/  CTRL_DIR ; 
 int /*<<< orphan*/  EAPOL_AUTH_SM_CHANGE ; 
 int ETH_ALEN ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KEY_RX ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  REAUTH_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct eapol_state_machine*) ; 
 scalar_t__ FUNC3 (struct eapol_authenticator*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct eapol_state_machine *sm)
{
	struct eapol_authenticator *eapol = sm->eapol;
	u8 addr[ETH_ALEN];
	unsigned int prev_auth_pae, prev_be_auth, prev_reauth_timer,
		prev_auth_key_tx, prev_key_rx, prev_ctrl_dir;
	int max_steps = 100;

	FUNC4(addr, sm->addr, ETH_ALEN);

	/*
	 * Allow EAPOL state machines to run as long as there are state
	 * changes, but exit and return here through event loop if more than
	 * 100 steps is needed as a precaution against infinite loops inside
	 * eloop callback.
	 */
restart:
	prev_auth_pae = sm->auth_pae_state;
	prev_be_auth = sm->be_auth_state;
	prev_reauth_timer = sm->reauth_timer_state;
	prev_auth_key_tx = sm->auth_key_tx_state;
	prev_key_rx = sm->key_rx_state;
	prev_ctrl_dir = sm->ctrl_dir_state;

	FUNC0(AUTH_PAE);
	if (sm->initializing || FUNC3(eapol, addr))
		FUNC0(BE_AUTH);
	if (sm->initializing || FUNC3(eapol, addr))
		FUNC0(REAUTH_TIMER);
	if (sm->initializing || FUNC3(eapol, addr))
		FUNC0(AUTH_KEY_TX);
	if (sm->initializing || FUNC3(eapol, addr))
		FUNC0(KEY_RX);
	if (sm->initializing || FUNC3(eapol, addr))
		FUNC0(CTRL_DIR);

	if (prev_auth_pae != sm->auth_pae_state ||
	    prev_be_auth != sm->be_auth_state ||
	    prev_reauth_timer != sm->reauth_timer_state ||
	    prev_auth_key_tx != sm->auth_key_tx_state ||
	    prev_key_rx != sm->key_rx_state ||
	    prev_ctrl_dir != sm->ctrl_dir_state) {
		if (--max_steps > 0)
			goto restart;
		/* Re-run from eloop timeout */
		FUNC2(sm);
		return;
	}

	if (FUNC3(eapol, addr) && sm->eap) {
		if (FUNC1(sm->eap)) {
			if (--max_steps > 0)
				goto restart;
			/* Re-run from eloop timeout */
			FUNC2(sm);
			return;
		}

		/* TODO: find a better location for this */
		if (sm->eap_if->aaaEapResp) {
			sm->eap_if->aaaEapResp = FALSE;
			if (sm->eap_if->aaaEapRespData == NULL) {
				FUNC7(MSG_DEBUG, "EAPOL: aaaEapResp set, "
					   "but no aaaEapRespData available");
				return;
			}
			sm->eapol->cb.aaa_send(
				sm->eapol->conf.ctx, sm->sta,
				FUNC8(sm->eap_if->aaaEapRespData),
				FUNC9(sm->eap_if->aaaEapRespData));
		}
	}

	if (FUNC3(eapol, addr))
		sm->eapol->cb.eapol_event(sm->eapol->conf.ctx, sm->sta,
					  EAPOL_AUTH_SM_CHANGE);
}