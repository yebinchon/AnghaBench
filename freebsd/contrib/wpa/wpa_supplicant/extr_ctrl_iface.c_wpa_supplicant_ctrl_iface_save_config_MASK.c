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
struct wpa_supplicant {TYPE_1__* conf; int /*<<< orphan*/  confname; } ;
struct TYPE_2__ {int /*<<< orphan*/  update_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct wpa_supplicant *wpa_s)
{
	int ret;

	if (!wpa_s->conf->update_config) {
		FUNC1(MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Not allowed "
			   "to update configuration (update_config=0)");
		return -1;
	}

	ret = FUNC0(wpa_s->confname, wpa_s->conf);
	if (ret) {
		FUNC1(MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Failed to "
			   "update configuration");
	} else {
		FUNC1(MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Configuration"
			   " updated");
	}

	return ret;
}