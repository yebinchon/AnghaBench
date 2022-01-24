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
struct wpabuf {int dummy; } ;
struct p2p_group {TYPE_1__* cfg; scalar_t__ beacon_update; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* ie_update ) (int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct wpabuf* FUNC0 (struct p2p_group*) ; 
 struct wpabuf* FUNC1 (struct p2p_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 

void FUNC5(struct p2p_group *group)
{
	struct wpabuf *beacon_ie;
	struct wpabuf *probe_resp_ie;

#ifdef CONFIG_WIFI_DISPLAY
	wifi_display_group_update(group);
#endif /* CONFIG_WIFI_DISPLAY */

	probe_resp_ie = FUNC1(group);
	if (probe_resp_ie == NULL)
		return;
	FUNC4(MSG_MSGDUMP, "P2P: Update GO Probe Response P2P IE",
			probe_resp_ie);

	if (group->beacon_update) {
		beacon_ie = FUNC0(group);
		if (beacon_ie)
			group->beacon_update = 0;
		FUNC4(MSG_MSGDUMP, "P2P: Update GO Beacon P2P IE",
				beacon_ie);
	} else
		beacon_ie = NULL;

	group->cfg->ie_update(group->cfg->cb_ctx, beacon_ie, probe_resp_ie);
}