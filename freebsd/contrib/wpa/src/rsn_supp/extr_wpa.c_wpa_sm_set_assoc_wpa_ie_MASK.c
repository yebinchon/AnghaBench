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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_sm {size_t assoc_wpa_ie_len; int /*<<< orphan*/ * assoc_wpa_ie; TYPE_1__* ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC4(struct wpa_sm *sm, const u8 *ie, size_t len)
{
	if (sm == NULL)
		return -1;

	FUNC0(sm->assoc_wpa_ie);
	if (ie == NULL || len == 0) {
		FUNC2(sm->ctx->msg_ctx, MSG_DEBUG,
			"WPA: clearing own WPA/RSN IE");
		sm->assoc_wpa_ie = NULL;
		sm->assoc_wpa_ie_len = 0;
	} else {
		FUNC3(MSG_DEBUG, "WPA: set own WPA/RSN IE", ie, len);
		sm->assoc_wpa_ie = FUNC1(ie, len);
		if (sm->assoc_wpa_ie == NULL)
			return -1;

		sm->assoc_wpa_ie_len = len;
	}

	return 0;
}