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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ p2p_group_interface; int enable_oce; } ;
typedef  int /*<<< orphan*/  ext_capab ;
typedef  enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;

/* Variables and functions */
 int OCE_STA ; 
 scalar_t__ P2P_GROUP_INTERFACE_CLIENT ; 
 int WPA_IF_P2P_CLIENT ; 
 int WPA_IF_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct wpabuf**,int) ; 
 int FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,struct wpabuf*) ; 

void FUNC10(struct wpa_supplicant *wpa_s)
{
	struct wpabuf *default_ies = NULL;
	u8 ext_capab[18];
	int ext_capab_len;
	enum wpa_driver_if_type type = WPA_IF_STATION;

#ifdef CONFIG_P2P
	if (wpa_s->p2p_group_interface == P2P_GROUP_INTERFACE_CLIENT)
		type = WPA_IF_P2P_CLIENT;
#endif /* CONFIG_P2P */

	FUNC0(wpa_s, type);

	ext_capab_len = FUNC7(wpa_s, ext_capab,
					     sizeof(ext_capab));
	if (ext_capab_len > 0 &&
	    FUNC6(&default_ies, ext_capab_len) == 0)
		FUNC5(default_ies, ext_capab, ext_capab_len);

#ifdef CONFIG_MBO
	if (wpa_s->enable_oce & OCE_STA)
		wpas_fils_req_param_add_max_channel(wpa_s, &default_ies);
	/* Send MBO and OCE capabilities */
	if (wpabuf_resize(&default_ies, 12) == 0)
		wpas_mbo_scan_ie(wpa_s, default_ies);
#endif /* CONFIG_MBO */

	if (default_ies)
		FUNC1(wpa_s, FUNC3(default_ies),
					     FUNC4(default_ies));
	FUNC2(default_ies);
}