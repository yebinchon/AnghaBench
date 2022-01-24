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
struct p2p_group {scalar_t__ wfd_ie; TYPE_1__* p2p; scalar_t__ members; int /*<<< orphan*/  noa; } ;
struct TYPE_2__ {scalar_t__* vendor_elem; } ;

/* Variables and functions */
 size_t VENDOR_ELEM_PROBE_RESP_P2P_GO ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_group*,struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_group*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC4 (struct wpabuf*) ; 
 struct wpabuf* FUNC5 (int) ; 
 struct wpabuf* FUNC6 (struct wpabuf*,struct wpabuf*) ; 
 struct wpabuf* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct p2p_group *group)
{
	struct wpabuf *p2p_subelems, *ie;

	p2p_subelems = FUNC5(500);
	if (p2p_subelems == NULL)
		return NULL;

	FUNC2(group, p2p_subelems);
	FUNC3(p2p_subelems, group->noa);

	/* P2P Device Info */
	FUNC0(p2p_subelems, group->p2p, NULL);

	/* P2P Group Info: Only when at least one P2P Client is connected */
	if (group->members)
		FUNC1(group, p2p_subelems, -1);

	ie = FUNC4(p2p_subelems);
	FUNC8(p2p_subelems);

	if (group->p2p->vendor_elem &&
	    group->p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P_GO]) {
		struct wpabuf *extra;
		extra = FUNC7(group->p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P_GO]);
		ie = FUNC6(extra, ie);
	}

#ifdef CONFIG_WIFI_DISPLAY
	if (group->wfd_ie) {
		struct wpabuf *wfd = wpabuf_dup(group->wfd_ie);
		ie = wpabuf_concat(wfd, ie);
	}
#endif /* CONFIG_WIFI_DISPLAY */

	return ie;
}