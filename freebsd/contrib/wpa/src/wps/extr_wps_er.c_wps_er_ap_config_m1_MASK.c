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
struct wps_er_ap {TYPE_2__* wps; int /*<<< orphan*/  ap_settings; TYPE_1__* er; } ;
struct wps_config {int registrar; int /*<<< orphan*/  new_ap_settings; int /*<<< orphan*/  wps; } ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  cfg ;
struct TYPE_4__ {int /*<<< orphan*/ * ap_settings_cb_ctx; int /*<<< orphan*/ * ap_settings_cb; } ;
struct TYPE_3__ {int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wps_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_er_ap*,struct wpabuf*) ; 
 TYPE_2__* FUNC3 (struct wps_config*) ; 

__attribute__((used)) static void FUNC4(struct wps_er_ap *ap, struct wpabuf *m1)
{
	struct wps_config cfg;

	if (ap->wps) {
		FUNC1(MSG_DEBUG, "WPS ER: Protocol run already in "
			   "progress with this AP");
		return;
	}

	FUNC0(&cfg, 0, sizeof(cfg));
	cfg.wps = ap->er->wps;
	cfg.registrar = 1;
	cfg.new_ap_settings = ap->ap_settings;
	ap->wps = FUNC3(&cfg);
	if (ap->wps == NULL)
		return;
	ap->wps->ap_settings_cb = NULL;
	ap->wps->ap_settings_cb_ctx = NULL;

	FUNC2(ap, m1);
}