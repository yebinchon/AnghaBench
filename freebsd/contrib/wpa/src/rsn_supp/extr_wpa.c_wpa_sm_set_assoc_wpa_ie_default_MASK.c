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
struct wpa_sm {size_t assoc_wpa_ie_len; int /*<<< orphan*/ * assoc_wpa_ie; scalar_t__ test_assoc_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (struct wpa_sm*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 

int FUNC7(struct wpa_sm *sm, u8 *wpa_ie,
				    size_t *wpa_ie_len)
{
	int res;

	if (sm == NULL)
		return -1;

#ifdef CONFIG_TESTING_OPTIONS
	if (sm->test_assoc_ie) {
		wpa_printf(MSG_DEBUG,
			   "TESTING: Replace association WPA/RSN IE");
		if (*wpa_ie_len < wpabuf_len(sm->test_assoc_ie))
			return -1;
		os_memcpy(wpa_ie, wpabuf_head(sm->test_assoc_ie),
			  wpabuf_len(sm->test_assoc_ie));
		res = wpabuf_len(sm->test_assoc_ie);
	} else
#endif /* CONFIG_TESTING_OPTIONS */
	res = FUNC2(sm, wpa_ie, *wpa_ie_len);
	if (res < 0)
		return -1;
	*wpa_ie_len = res;

	FUNC3(MSG_DEBUG, "WPA: Set own WPA IE default",
		    wpa_ie, *wpa_ie_len);

	if (sm->assoc_wpa_ie == NULL) {
		/*
		 * Make a copy of the WPA/RSN IE so that 4-Way Handshake gets
		 * the correct version of the IE even if PMKSA caching is
		 * aborted (which would remove PMKID from IE generation).
		 */
		sm->assoc_wpa_ie = FUNC1(wpa_ie, *wpa_ie_len);
		if (sm->assoc_wpa_ie == NULL)
			return -1;

		sm->assoc_wpa_ie_len = *wpa_ie_len;
	} else {
		FUNC3(MSG_DEBUG,
			    "WPA: Leave previously set WPA IE default",
			    sm->assoc_wpa_ie, sm->assoc_wpa_ie_len);
	}

	return 0;
}