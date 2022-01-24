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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_authenticator {int /*<<< orphan*/  addr; int /*<<< orphan*/  pmksa; } ;
struct eapol_state_machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPA_KEY_MGMT_IEEE8021X ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,struct eapol_state_machine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC2(struct wpa_authenticator *wpa_auth,
			       const u8 *pmk, size_t len, const u8 *sta_addr,
			       int session_timeout,
			       struct eapol_state_machine *eapol)
{
	if (wpa_auth == NULL)
		return -1;

	FUNC1(MSG_DEBUG, "RSN: Cache PMK from preauth", pmk, len);
	if (FUNC0(wpa_auth->pmksa, pmk, len, NULL,
				 NULL, 0,
				 wpa_auth->addr,
				 sta_addr, session_timeout, eapol,
				 WPA_KEY_MGMT_IEEE8021X))
		return 0;

	return -1;
}