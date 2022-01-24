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
struct wpabuf {int dummy; } ;
struct p2p_group {TYPE_1__* p2p; scalar_t__ wfd_ie; } ;
struct TYPE_2__ {scalar_t__* vendor_elem; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_SC_SUCCESS ; 
 size_t VENDOR_ELEM_P2P_ASSOC_RESP ; 
 int /*<<< orphan*/ * FUNC0 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC3 (int) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,scalar_t__) ; 

struct wpabuf * FUNC6(struct p2p_group *group, u8 status)
{
	struct wpabuf *resp;
	u8 *rlen;
	size_t extra = 0;

#ifdef CONFIG_WIFI_DISPLAY
	if (group->wfd_ie)
		extra = wpabuf_len(group->wfd_ie);
#endif /* CONFIG_WIFI_DISPLAY */

	if (group->p2p->vendor_elem &&
	    group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP])
		extra += FUNC4(group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP]);

	/*
	 * (Re)Association Response - P2P IE
	 * Status attribute (shall be present when association request is
	 *	denied)
	 * Extended Listen Timing (may be present)
	 */
	resp = FUNC3(20 + extra);
	if (resp == NULL)
		return NULL;

#ifdef CONFIG_WIFI_DISPLAY
	if (group->wfd_ie)
		wpabuf_put_buf(resp, group->wfd_ie);
#endif /* CONFIG_WIFI_DISPLAY */

	if (group->p2p->vendor_elem &&
	    group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP])
		FUNC5(resp,
			       group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP]);

	rlen = FUNC0(resp);
	if (status != P2P_SC_SUCCESS)
		FUNC1(resp, status);
	FUNC2(resp, rlen);

	return resp;
}