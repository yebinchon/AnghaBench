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
struct TYPE_2__ {int /*<<< orphan*/  fils_pmkid; int /*<<< orphan*/  fils_pmk_len; int /*<<< orphan*/  fils_pmk; int /*<<< orphan*/  fils_erp_next_seq_num; int /*<<< orphan*/  ptk_kek_len; int /*<<< orphan*/  ptk_kek; int /*<<< orphan*/  ptk_kck_len; int /*<<< orphan*/  ptk_kck; int /*<<< orphan*/  key_replay_ctr; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {scalar_t__ auth_alg; int /*<<< orphan*/  wpa; int /*<<< orphan*/  bssid; int /*<<< orphan*/  eapol; int /*<<< orphan*/  wpa_state; } ;
struct wpa_bss {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPA_AUTH_ALG_FILS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wpa_bss* FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpa_bss*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC9(struct wpa_supplicant *wpa_s,
					    union wpa_event_data *data)
{
	FUNC4(wpa_s, MSG_DEBUG,
		"Connection authorized by device, previous state %d",
		wpa_s->wpa_state);

	FUNC8(wpa_s);

	FUNC7(wpa_s->wpa, data->assoc_info.key_replay_ctr);
	FUNC6(wpa_s->wpa, data->assoc_info.ptk_kck,
			       data->assoc_info.ptk_kck_len,
			       data->assoc_info.ptk_kek,
			       data->assoc_info.ptk_kek_len);
#ifdef CONFIG_FILS
	if (wpa_s->auth_alg == WPA_AUTH_ALG_FILS) {
		struct wpa_bss *bss = wpa_bss_get_bssid(wpa_s, wpa_s->bssid);
		const u8 *fils_cache_id = wpa_bss_get_fils_cache_id(bss);

		/* Update ERP next sequence number */
		eapol_sm_update_erp_next_seq_num(
			wpa_s->eapol, data->assoc_info.fils_erp_next_seq_num);

		if (data->assoc_info.fils_pmk && data->assoc_info.fils_pmkid) {
			/* Add the new PMK and PMKID to the PMKSA cache */
			wpa_sm_pmksa_cache_add(wpa_s->wpa,
					       data->assoc_info.fils_pmk,
					       data->assoc_info.fils_pmk_len,
					       data->assoc_info.fils_pmkid,
					       wpa_s->bssid, fils_cache_id);
		} else if (data->assoc_info.fils_pmkid) {
			/* Update the current PMKSA used for this connection */
			pmksa_cache_set_current(wpa_s->wpa,
						data->assoc_info.fils_pmkid,
						NULL, NULL, 0, NULL, 0);
		}
	}
#endif /* CONFIG_FILS */
}