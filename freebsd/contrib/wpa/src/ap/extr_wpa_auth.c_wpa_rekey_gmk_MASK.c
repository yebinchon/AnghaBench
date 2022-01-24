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
struct TYPE_4__ {scalar_t__ wpa_gmk_rekey; } ;
struct wpa_authenticator {TYPE_2__ conf; TYPE_1__* group; } ;
struct TYPE_3__ {int /*<<< orphan*/  GMK; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOGGER_DEBUG ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPA_GMK_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,void (*) (void*,void*),struct wpa_authenticator*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_authenticator*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_authenticator *wpa_auth = eloop_ctx;

	if (FUNC1(wpa_auth->group->GMK, WPA_GMK_LEN)) {
		FUNC4(MSG_ERROR, "Failed to get random data for WPA "
			   "initialization.");
	} else {
		FUNC2(wpa_auth, NULL, LOGGER_DEBUG, "GMK rekeyd");
		FUNC3(MSG_DEBUG, "GMK",
				wpa_auth->group->GMK, WPA_GMK_LEN);
	}

	if (wpa_auth->conf.wpa_gmk_rekey) {
		FUNC0(wpa_auth->conf.wpa_gmk_rekey, 0,
				       wpa_rekey_gmk, wpa_auth, NULL);
	}
}