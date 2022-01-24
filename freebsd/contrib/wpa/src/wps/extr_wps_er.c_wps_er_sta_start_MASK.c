#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct wps_er_sta {TYPE_5__* cred; TYPE_3__* wps; TYPE_5__* addr; TYPE_2__* ap; } ;
struct wps_config {int registrar; TYPE_5__* peer_addr; int /*<<< orphan*/  wps; } ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  cfg ;
struct TYPE_12__ {struct TYPE_12__* mac_addr; int /*<<< orphan*/ * cred_attr; } ;
struct TYPE_11__ {int er; TYPE_5__* use_cred; } ;
struct TYPE_10__ {TYPE_5__* ap_settings; TYPE_1__* er; } ;
struct TYPE_9__ {int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  WSC_MSG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_er_sta*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (struct wps_config*) ; 

__attribute__((used)) static void FUNC7(struct wps_er_sta *sta, struct wpabuf *msg)
{
	struct wps_config cfg;

	if (sta->wps)
		FUNC4(sta->wps);

	FUNC3(&cfg, 0, sizeof(cfg));
	cfg.wps = sta->ap->er->wps;
	cfg.registrar = 1;
	cfg.peer_addr = sta->addr;

	sta->wps = FUNC6(&cfg);
	if (sta->wps == NULL)
		return;
	sta->wps->er = 1;
	sta->wps->use_cred = sta->ap->ap_settings;
	if (sta->ap->ap_settings) {
		FUNC0(sta->cred);
		sta->cred = FUNC1(sizeof(*sta->cred));
		if (sta->cred) {
			FUNC2(sta->cred, sta->ap->ap_settings,
				  sizeof(*sta->cred));
			sta->cred->cred_attr = NULL;
			FUNC2(sta->cred->mac_addr, sta->addr, ETH_ALEN);
			sta->wps->use_cred = sta->cred;
		}
	}

	FUNC5(sta, msg, WSC_MSG);
}