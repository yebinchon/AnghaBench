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
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_MAX ; 
 size_t NL80211_ATTR_PROTOCOL_FEATURES ; 
 int NL_SKIP ; 
 int /*<<< orphan*/  FUNC0 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct genlmsghdr* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nl_msg*) ; 

__attribute__((used)) static int FUNC6(struct nl_msg *msg, void *arg)
{
	u32 *feat = arg;
	struct nlattr *tb_msg[NL80211_ATTR_MAX + 1];
	struct genlmsghdr *gnlh = FUNC4(FUNC5(msg));

	FUNC3(tb_msg, NL80211_ATTR_MAX, FUNC0(gnlh, 0),
		  FUNC1(gnlh, 0), NULL);

	if (tb_msg[NL80211_ATTR_PROTOCOL_FEATURES])
		*feat = FUNC2(tb_msg[NL80211_ATTR_PROTOCOL_FEATURES]);

	return NL_SKIP;
}