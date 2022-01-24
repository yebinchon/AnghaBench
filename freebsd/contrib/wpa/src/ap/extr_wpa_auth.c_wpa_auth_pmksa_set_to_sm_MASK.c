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
struct wpa_state_machine {struct rsn_pmksa_cache_entry* pmksa; } ;
struct wpa_authenticator {int /*<<< orphan*/ * dot11RSNAPMKIDUsed; } ;
struct rsn_pmksa_cache_entry {int /*<<< orphan*/  pmkid; int /*<<< orphan*/  pmk; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMKID_LEN ; 
 int /*<<< orphan*/  PMK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct rsn_pmksa_cache_entry *pmksa,
			      struct wpa_state_machine *sm,
			      struct wpa_authenticator *wpa_auth,
			      u8 *pmkid, u8 *pmk)
{
	if (!sm)
		return;

	sm->pmksa = pmksa;
	FUNC0(pmk, pmksa->pmk, PMK_LEN);
	FUNC0(pmkid, pmksa->pmkid, PMKID_LEN);
	FUNC0(wpa_auth->dot11RSNAPMKIDUsed, pmksa->pmkid, PMKID_LEN);
}