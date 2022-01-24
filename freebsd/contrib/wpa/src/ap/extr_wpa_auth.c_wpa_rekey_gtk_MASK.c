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
struct wpa_group {struct wpa_group* next; scalar_t__ changed; int /*<<< orphan*/  GTKReKey; } ;
struct TYPE_2__ {scalar_t__ wpa_group_rekey; } ;
struct wpa_authenticator {TYPE_1__ conf; struct wpa_group* group; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LOGGER_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,void (*) (void*,void*),struct wpa_authenticator*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_authenticator*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_authenticator*,struct wpa_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_authenticator*,struct wpa_group*) ; 

__attribute__((used)) static void FUNC5(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_authenticator *wpa_auth = eloop_ctx;
	struct wpa_group *group, *next;

	FUNC1(wpa_auth, NULL, LOGGER_DEBUG, "rekeying GTK");
	group = wpa_auth->group;
	while (group) {
		FUNC2(wpa_auth, group);

		group->GTKReKey = TRUE;
		do {
			group->changed = FALSE;
			FUNC4(wpa_auth, group);
		} while (group->changed);

		next = group->next;
		FUNC3(wpa_auth, group);
		group = next;
	}

	if (wpa_auth->conf.wpa_group_rekey) {
		FUNC0(wpa_auth->conf.wpa_group_rekey,
				       0, wpa_rekey_gtk, wpa_auth, NULL);
	}
}