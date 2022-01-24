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
typedef  int u8 ;
struct TYPE_2__ {int action_code; scalar_t__ buf_len; scalar_t__ timer; scalar_t__ count; int /*<<< orphan*/ * buf; } ;
struct wpa_tdls_peer {TYPE_1__ sm_tmr; } ;
struct wpa_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_sm*,struct wpa_tdls_peer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  wpa_tdls_tpk_retry_timeout ; 

__attribute__((used)) static void FUNC3(struct wpa_sm *sm,
					      struct wpa_tdls_peer *peer,
					      u8 action_code)
{
	if (action_code == peer->sm_tmr.action_code) {
		FUNC2(MSG_DEBUG, "TDLS: Retry timeout cancelled for "
			   "action_code=%u", action_code);

		/* Cancel Timeout registered */
		FUNC0(wpa_tdls_tpk_retry_timeout, sm, peer);

		/* free all resources meant for retry */
		FUNC1(peer->sm_tmr.buf);
		peer->sm_tmr.buf = NULL;

		peer->sm_tmr.count = 0;
		peer->sm_tmr.timer = 0;
		peer->sm_tmr.buf_len = 0;
		peer->sm_tmr.action_code = 0xff;
	} else {
		FUNC2(MSG_INFO, "TDLS: Error in cancelling retry timeout "
			   "(Unknown action_code=%u)", action_code);
	}
}