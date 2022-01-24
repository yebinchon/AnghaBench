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
struct wpa_sm {int /*<<< orphan*/  assoc_wpa_ie_len; int /*<<< orphan*/ * assoc_wpa_ie; TYPE_1__* ctx; } ;
struct wpa_ie_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wpa_ie_data*) ; 

int FUNC2(struct wpa_sm *sm, struct wpa_ie_data *data)
{
	if (sm == NULL)
		return -1;

	if (sm->assoc_wpa_ie == NULL) {
		FUNC0(sm->ctx->msg_ctx, MSG_DEBUG,
			"WPA: No WPA/RSN IE available from association info");
		return -1;
	}
	if (FUNC1(sm->assoc_wpa_ie, sm->assoc_wpa_ie_len, data))
		return -2;
	return 0;
}