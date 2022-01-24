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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_ssid {size_t ssid_len; scalar_t__ mode; int num_p2p_clients; int /*<<< orphan*/  const* p2p_client_list; int /*<<< orphan*/  id; int /*<<< orphan*/  const* ssid; int /*<<< orphan*/  const* bssid; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPAS_MODE_P2P_GO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 struct wpa_ssid* FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *ctx, const u8 *peer, const u8 *go,
				    const u8 *ssid, size_t ssid_len)
{
	struct wpa_supplicant *wpa_s = ctx;
	struct wpa_ssid *s;
	int save_config = 0;
	size_t i;

	/* Start with our first choice of Persistent Groups */
	while ((s = FUNC6(wpa_s, peer, NULL, 0))) {
		if (go && ssid && ssid_len &&
		    s->ssid_len == ssid_len &&
		    FUNC0(go, s->bssid, ETH_ALEN) == 0 &&
		    FUNC0(ssid, s->ssid, ssid_len) == 0)
			break;

		/* Remove stale persistent group */
		if (s->mode != WPAS_MODE_P2P_GO || s->num_p2p_clients <= 1) {
			FUNC4(wpa_s, MSG_DEBUG,
				"P2P: Remove stale persistent group id=%d",
				s->id);
			FUNC5(wpa_s, s);
			FUNC3(wpa_s->conf, s->id);
			save_config = 1;
			continue;
		}

		for (i = 0; i < s->num_p2p_clients; i++) {
			if (FUNC0(s->p2p_client_list + i * 2 * ETH_ALEN,
				      peer, ETH_ALEN) != 0)
				continue;

			FUNC1(s->p2p_client_list + i * 2 * ETH_ALEN,
				   s->p2p_client_list + (i + 1) * 2 * ETH_ALEN,
				   (s->num_p2p_clients - i - 1) * 2 * ETH_ALEN);
			break;
		}
		s->num_p2p_clients--;
		save_config = 1;
	}

	if (save_config)
		FUNC2(wpa_s);

	/* Return TRUE if valid SSID remains */
	return s != NULL;
}