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
struct rtattr {scalar_t__ rta_type; int rta_len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct ifinfomsg {int ifi_flags; int /*<<< orphan*/  ifi_family; int /*<<< orphan*/  ifi_index; } ;
struct hostapd_data {int dummy; } ;
typedef  int /*<<< orphan*/  ifname ;

/* Variables and functions */
 int IFF_DORMANT ; 
 int IFF_LOWER_UP ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 scalar_t__ IFLA_IFNAME ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int) ; 
 struct ifinfomsg* FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (int) ; 
 struct rtattr* FUNC3 (struct rtattr*,int) ; 
 scalar_t__ FUNC4 (struct rtattr*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC11(struct nlmsghdr *h, size_t len, int del,
		  struct hostapd_data *hapd)
{
	struct ifinfomsg *ifi;
	int attrlen, nlmsg_len, rta_len;
	struct rtattr *attr;
	char ifname[IFNAMSIZ + 1];

	if (len < sizeof(*ifi))
		return;

	ifi = FUNC1(h);

	nlmsg_len = FUNC0(sizeof(struct ifinfomsg));

	attrlen = h->nlmsg_len - nlmsg_len;
	if (attrlen < 0)
		return;

	attr = (struct rtattr *) (((char *) ifi) + nlmsg_len);

	FUNC7(ifname, 0, sizeof(ifname));
	rta_len = FUNC2(sizeof(struct rtattr));
	while (FUNC4(attr, attrlen)) {
		if (attr->rta_type == IFLA_IFNAME) {
			int n = attr->rta_len - rta_len;
			if (n < 0)
				break;

			if ((size_t) n >= sizeof(ifname))
				n = sizeof(ifname) - 1;
			FUNC6(ifname, ((char *) attr) + rta_len, n);

		}

		attr = FUNC3(attr, attrlen);
	}

	if (!ifname[0])
		return;
	if (del && FUNC5(ifname)) {
		 /* interface still exists, race condition ->
		  * iface has just been recreated */
		return;
	}

	FUNC10(MSG_DEBUG,
		   "VLAN: RTM_%sLINK: ifi_index=%d ifname=%s ifi_family=%d ifi_flags=0x%x (%s%s%s%s)",
		   del ? "DEL" : "NEW",
		   ifi->ifi_index, ifname, ifi->ifi_family, ifi->ifi_flags,
		   (ifi->ifi_flags & IFF_UP) ? "[UP]" : "",
		   (ifi->ifi_flags & IFF_RUNNING) ? "[RUNNING]" : "",
		   (ifi->ifi_flags & IFF_LOWER_UP) ? "[LOWER_UP]" : "",
		   (ifi->ifi_flags & IFF_DORMANT) ? "[DORMANT]" : "");

	if (del)
		FUNC8(ifname, hapd);
	else
		FUNC9(ifname, hapd);
}