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
typedef  struct wpa_auth_config {int /*<<< orphan*/  ip_addr_start; int /*<<< orphan*/  ip_addr_end; } const wpa_auth_config ;
typedef  struct wpa_auth_config u8 ;
struct TYPE_2__ {scalar_t__ wpa_group_rekey; scalar_t__ wpa_gmk_rekey; } ;
struct wpa_authenticator {int /*<<< orphan*/  ip_pool; TYPE_1__ conf; int /*<<< orphan*/ * pmksa; struct wpa_authenticator* wpa_ie; struct wpa_authenticator* group; int /*<<< orphan*/ * ft_pmk_cache; void* cb_ctx; struct wpa_auth_callbacks const* cb; TYPE_1__* addr; } ;
struct wpa_auth_callbacks {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_authenticator*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_authenticator*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct wpa_auth_config const*,int) ; 
 struct wpa_authenticator* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,struct wpa_authenticator*) ; 
 scalar_t__ FUNC8 (struct wpa_authenticator*) ; 
 int /*<<< orphan*/  wpa_auth_pmksa_free_cb ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 struct wpa_authenticator* FUNC10 (struct wpa_authenticator*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wpa_rekey_gmk ; 
 int /*<<< orphan*/  wpa_rekey_gtk ; 

struct wpa_authenticator * FUNC12(const u8 *addr,
				    struct wpa_auth_config *conf,
				    const struct wpa_auth_callbacks *cb,
				    void *cb_ctx)
{
	struct wpa_authenticator *wpa_auth;

	wpa_auth = FUNC5(sizeof(struct wpa_authenticator));
	if (wpa_auth == NULL)
		return NULL;
	FUNC4(wpa_auth->addr, addr, ETH_ALEN);
	FUNC4(&wpa_auth->conf, conf, sizeof(*conf));
	wpa_auth->cb = cb;
	wpa_auth->cb_ctx = cb_ctx;

	if (FUNC8(wpa_auth)) {
		FUNC11(MSG_ERROR, "Could not generate WPA IE.");
		FUNC3(wpa_auth);
		return NULL;
	}

	wpa_auth->group = FUNC10(wpa_auth, 0, 1);
	if (wpa_auth->group == NULL) {
		FUNC3(wpa_auth->wpa_ie);
		FUNC3(wpa_auth);
		return NULL;
	}

	wpa_auth->pmksa = FUNC7(wpa_auth_pmksa_free_cb,
						wpa_auth);
	if (wpa_auth->pmksa == NULL) {
		FUNC11(MSG_ERROR, "PMKSA cache initialization failed.");
		FUNC3(wpa_auth->group);
		FUNC3(wpa_auth->wpa_ie);
		FUNC3(wpa_auth);
		return NULL;
	}

#ifdef CONFIG_IEEE80211R_AP
	wpa_auth->ft_pmk_cache = wpa_ft_pmk_cache_init();
	if (wpa_auth->ft_pmk_cache == NULL) {
		wpa_printf(MSG_ERROR, "FT PMK cache initialization failed.");
		os_free(wpa_auth->group);
		os_free(wpa_auth->wpa_ie);
		pmksa_cache_auth_deinit(wpa_auth->pmksa);
		os_free(wpa_auth);
		return NULL;
	}
#endif /* CONFIG_IEEE80211R_AP */

	if (wpa_auth->conf.wpa_gmk_rekey) {
		FUNC2(wpa_auth->conf.wpa_gmk_rekey, 0,
				       wpa_rekey_gmk, wpa_auth, NULL);
	}

	if (wpa_auth->conf.wpa_group_rekey) {
		FUNC2(wpa_auth->conf.wpa_group_rekey, 0,
				       wpa_rekey_gtk, wpa_auth, NULL);
	}

#ifdef CONFIG_P2P
	if (WPA_GET_BE32(conf->ip_addr_start)) {
		int count = WPA_GET_BE32(conf->ip_addr_end) -
			WPA_GET_BE32(conf->ip_addr_start) + 1;
		if (count > 1000)
			count = 1000;
		if (count > 0)
			wpa_auth->ip_pool = bitfield_alloc(count);
	}
#endif /* CONFIG_P2P */

	return wpa_auth;
}