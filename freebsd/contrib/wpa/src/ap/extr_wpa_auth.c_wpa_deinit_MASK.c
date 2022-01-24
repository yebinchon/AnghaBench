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
struct wpa_group {struct wpa_group* next; struct wpa_group* group; struct wpa_group* wpa_ie; int /*<<< orphan*/  ip_pool; int /*<<< orphan*/ * ft_pmk_cache; int /*<<< orphan*/  pmksa; } ;
struct wpa_authenticator {struct wpa_authenticator* next; struct wpa_authenticator* group; struct wpa_authenticator* wpa_ie; int /*<<< orphan*/  ip_pool; int /*<<< orphan*/ * ft_pmk_cache; int /*<<< orphan*/  pmksa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wpa_rekey_gmk ; 
 int /*<<< orphan*/  wpa_rekey_gtk ; 

void FUNC6(struct wpa_authenticator *wpa_auth)
{
	struct wpa_group *group, *prev;

	FUNC1(wpa_rekey_gmk, wpa_auth, NULL);
	FUNC1(wpa_rekey_gtk, wpa_auth, NULL);

	FUNC3(wpa_auth->pmksa);

#ifdef CONFIG_IEEE80211R_AP
	wpa_ft_pmk_cache_deinit(wpa_auth->ft_pmk_cache);
	wpa_auth->ft_pmk_cache = NULL;
	wpa_ft_deinit(wpa_auth);
#endif /* CONFIG_IEEE80211R_AP */

#ifdef CONFIG_P2P
	bitfield_free(wpa_auth->ip_pool);
#endif /* CONFIG_P2P */


	FUNC2(wpa_auth->wpa_ie);

	group = wpa_auth->group;
	while (group) {
		prev = group;
		group = group->next;
		FUNC2(prev);
	}

	FUNC2(wpa_auth);
}