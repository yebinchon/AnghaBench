#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_2__* conf; } ;
struct wpa_cred {scalar_t__ roaming_consortium_len; scalar_t__ num_roaming_consortiums; int /*<<< orphan*/  roaming_consortium; int /*<<< orphan*/  eap_method; struct wpa_cred* next; } ;
struct wpa_bss {TYPE_1__* anqp; } ;
struct TYPE_4__ {struct wpa_cred* cred; } ;
struct TYPE_3__ {struct wpabuf* roaming_consortium; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_ROAMING_CONSORTIUM ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,struct wpa_cred*,struct wpa_bss*) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,struct wpa_cred*,struct wpa_bss*) ; 
 scalar_t__ FUNC2 (struct wpa_cred*,struct wpa_bss*) ; 
 scalar_t__ FUNC3 (struct wpa_cred*,struct wpa_bss*) ; 
 scalar_t__ FUNC4 (struct wpa_supplicant*,struct wpa_cred*,struct wpa_bss*) ; 
 scalar_t__ FUNC5 (struct wpa_cred*,struct wpa_cred*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,struct wpabuf const*,struct wpa_cred*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,struct wpabuf const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (struct wpa_bss*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpa_cred * FUNC9(
	struct wpa_supplicant *wpa_s, struct wpa_bss *bss, int ignore_bw,
	int *excluded)
{
	struct wpa_cred *cred, *selected = NULL;
	const u8 *ie;
	const struct wpabuf *anqp;
	int is_excluded = 0;

	ie = FUNC8(bss, WLAN_EID_ROAMING_CONSORTIUM);
	anqp = bss->anqp ? bss->anqp->roaming_consortium : NULL;

	if (!ie && !anqp)
		return NULL;

	if (wpa_s->conf->cred == NULL)
		return NULL;

	for (cred = wpa_s->conf->cred; cred; cred = cred->next) {
		if (cred->roaming_consortium_len == 0 &&
		    cred->num_roaming_consortiums == 0)
			continue;

		if (!cred->eap_method)
			continue;

		if ((cred->roaming_consortium_len == 0 ||
		     !FUNC7(ie, anqp,
					       cred->roaming_consortium,
					       cred->roaming_consortium_len)) &&
		    !FUNC6(ie, anqp, cred))
			continue;

		if (FUNC3(cred, bss))
			continue;
		if (!ignore_bw && FUNC0(wpa_s, cred, bss))
			continue;
		if (!ignore_bw && FUNC4(wpa_s, cred, bss))
			continue;
		if (!ignore_bw && FUNC1(wpa_s, cred, bss))
			continue;
		if (FUNC2(cred, bss)) {
			if (excluded == NULL)
				continue;
			if (selected == NULL) {
				selected = cred;
				is_excluded = 1;
			}
		} else {
			if (selected == NULL || is_excluded ||
			    FUNC5(selected, cred) < 0) {
				selected = cred;
				is_excluded = 0;
			}
		}
	}

	if (excluded)
		*excluded = is_excluded;

	return selected;
}