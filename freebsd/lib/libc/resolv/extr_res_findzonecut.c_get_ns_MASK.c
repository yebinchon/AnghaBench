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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  rrset_ns ;
typedef  int /*<<< orphan*/  res_state ;
typedef  int /*<<< orphan*/  ns_msg ;
typedef  int /*<<< orphan*/  ns_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NS_MAXMSG ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_s_an ; 
 int /*<<< orphan*/  ns_t_ns ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(res_state statp, const char *zname, ns_class class, int opts,
      rrset_ns *nsrrsp)
{
	u_char *resp;
	ns_msg msg;
	int n;

	resp = FUNC3(NS_MAXMSG);
	if (resp == NULL)
		return (-1);

	/* Go and get the NS RRs for this zone. */
	n = FUNC1(statp, zname, class, ns_t_ns, resp, &msg);
	if (n != 0) {
		FUNC0(("get_ns: do_query('%s', %s) failed (%d)",
			 zname, FUNC4(class), n));
		FUNC2(resp);
		return (-1);
	}

	/* Remember the NS RRs and associated A RRs that came back. */
	if (FUNC5(statp, &msg, ns_s_an, zname, class, opts, nsrrsp) < 0) {
		FUNC0(("get_ns save_ns('%s', %s) failed",
			 zname, FUNC4(class)));
		FUNC2(resp);
		return (-1);
	}

	FUNC2(resp);
	return (0);
}