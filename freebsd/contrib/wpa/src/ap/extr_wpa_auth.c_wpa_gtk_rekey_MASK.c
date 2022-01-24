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
struct wpa_group {int GM; int GN; int GM_igtk; int GN_igtk; } ;
struct wpa_authenticator {struct wpa_group* group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_authenticator*,struct wpa_group*) ; 

void FUNC2(struct wpa_authenticator *wpa_auth)
{
	int tmp, i;
	struct wpa_group *group;

	if (wpa_auth == NULL)
		return;

	group = wpa_auth->group;

	for (i = 0; i < 2; i++) {
		tmp = group->GM;
		group->GM = group->GN;
		group->GN = tmp;
#ifdef CONFIG_IEEE80211W
		tmp = group->GM_igtk;
		group->GM_igtk = group->GN_igtk;
		group->GN_igtk = tmp;
#endif /* CONFIG_IEEE80211W */
		FUNC1(wpa_auth, group);
		FUNC0(wpa_auth, group);
	}
}