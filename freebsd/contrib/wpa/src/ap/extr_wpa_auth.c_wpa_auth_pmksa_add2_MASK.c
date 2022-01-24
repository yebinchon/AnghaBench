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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ disable_pmksa_caching; } ;
struct wpa_authenticator {int /*<<< orphan*/  addr; int /*<<< orphan*/  pmksa; TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PMK_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC2(struct wpa_authenticator *wpa_auth, const u8 *addr,
			const u8 *pmk, size_t pmk_len, const u8 *pmkid,
			int session_timeout, int akmp)
{
	if (wpa_auth->conf.disable_pmksa_caching)
		return -1;

	FUNC1(MSG_DEBUG, "RSN: Cache PMK (2)", pmk, PMK_LEN);
	if (FUNC0(wpa_auth->pmksa, pmk, pmk_len, pmkid,
				 NULL, 0, wpa_auth->addr, addr, session_timeout,
				 NULL, akmp))
		return 0;

	return -1;
}