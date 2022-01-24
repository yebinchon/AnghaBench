#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {TYPE_1__* conf; int /*<<< orphan*/  confname; } ;
struct wpa_config_blob {int dummy; } ;
struct TYPE_3__ {scalar_t__ update_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct wpa_config_blob*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void *ctx,
					   struct wpa_config_blob *blob)
{
	struct wpa_supplicant *wpa_s = ctx;
	FUNC0(wpa_s->conf, blob);
	if (wpa_s->conf->update_config) {
		int ret = FUNC1(wpa_s->confname, wpa_s->conf);
		if (ret) {
			FUNC2(MSG_DEBUG, "Failed to update config after "
				   "blob set");
		}
	}
}