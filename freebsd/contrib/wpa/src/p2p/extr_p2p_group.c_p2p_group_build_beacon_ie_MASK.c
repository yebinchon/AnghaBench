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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group {int /*<<< orphan*/  noa; TYPE_2__* p2p; } ;
struct TYPE_4__ {TYPE_1__* cfg; scalar_t__* vendor_elem; scalar_t__ wfd_ie_beacon; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 size_t VENDOR_ELEM_BEACON_P2P_GO ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_group*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC5 (int) ; 
 size_t FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct p2p_group *group)
{
	struct wpabuf *ie;
	u8 *len;
	size_t extra = 0;

#ifdef CONFIG_WIFI_DISPLAY
	if (group->p2p->wfd_ie_beacon)
		extra = wpabuf_len(group->p2p->wfd_ie_beacon);
#endif /* CONFIG_WIFI_DISPLAY */

	if (group->p2p->vendor_elem &&
	    group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO])
		extra += FUNC6(group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO]);

	ie = FUNC5(257 + extra);
	if (ie == NULL)
		return NULL;

#ifdef CONFIG_WIFI_DISPLAY
	if (group->p2p->wfd_ie_beacon)
		wpabuf_put_buf(ie, group->p2p->wfd_ie_beacon);
#endif /* CONFIG_WIFI_DISPLAY */

	if (group->p2p->vendor_elem &&
	    group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO])
		FUNC7(ie,
			       group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO]);

	len = FUNC1(ie);
	FUNC3(group, ie);
	FUNC0(ie, group->p2p->cfg->dev_addr);
	FUNC4(ie, group->noa);
	FUNC2(ie, len);

	return ie;
}