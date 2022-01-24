#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct p2p_message {scalar_t__ manageability; } ;
struct p2p_data {scalar_t__ num_groups; int dev_capab; scalar_t__ cross_connect; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int P2P_DEV_CAPAB_CONCURRENT_OPER ; 
 int P2P_DEV_CAPAB_INFRA_MANAGED ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_CROSS_CONN ; 
 int /*<<< orphan*/  P2P_GROUP_CAPAB_GROUP_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct p2p_data*,char*,char*) ; 
 scalar_t__ FUNC7 (struct wpabuf*,struct p2p_message*) ; 
 struct wpabuf* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 size_t FUNC11 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC12(struct p2p_data *p2p, const u8 *bssid,
				    u8 *buf, size_t len, struct wpabuf *p2p_ie)
{
	struct wpabuf *tmp;
	u8 *lpos;
	size_t tmplen;
	int res;
	u8 group_capab;
	struct p2p_message msg;

	if (p2p_ie == NULL)
		return 0; /* WLAN AP is not a P2P manager */

	FUNC1(&msg, 0, sizeof(msg));
	if (FUNC7(p2p_ie, &msg) < 0)
		return 0;

	FUNC6(p2p, "BSS P2P manageability %s",
		msg.manageability ? "enabled" : "disabled");

	if (!msg.manageability)
		return 0;

	/*
	 * (Re)Association Request - P2P IE
	 * P2P Capability attribute (shall be present)
	 * P2P Interface attribute (present if concurrent device and
	 *	P2P Management is enabled)
	 */
	tmp = FUNC8(200);
	if (tmp == NULL)
		return -1;

	lpos = FUNC3(tmp);
	group_capab = 0;
	if (p2p->num_groups > 0) {
		group_capab |= P2P_GROUP_CAPAB_GROUP_OWNER;
		if ((p2p->dev_capab & P2P_DEV_CAPAB_CONCURRENT_OPER) &&
		    (p2p->dev_capab & P2P_DEV_CAPAB_INFRA_MANAGED) &&
		    p2p->cross_connect)
			group_capab |= P2P_GROUP_CAPAB_CROSS_CONN;
	}
	FUNC2(tmp, p2p->dev_capab, group_capab);
	if ((p2p->dev_capab & P2P_DEV_CAPAB_CONCURRENT_OPER) &&
	    (p2p->dev_capab & P2P_DEV_CAPAB_INFRA_MANAGED))
		FUNC4(tmp, p2p);
	FUNC5(tmp, lpos);

	tmplen = FUNC11(tmp);
	if (tmplen > len)
		res = -1;
	else {
		FUNC0(buf, FUNC10(tmp), tmplen);
		res = tmplen;
	}
	FUNC9(tmp);

	return res;
}