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
struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int /*<<< orphan*/  ifgr_name; } ;
struct ifg_req {char* ifgrq_member; } ;
typedef  int /*<<< orphan*/  ifgr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTTY ; 
 int /*<<< orphan*/  SIOCGIFGMEMB ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct ifgroupreq*,int) ; 
 struct ifg_req* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_code ; 
 int /*<<< orphan*/  FUNC4 (struct ifg_req*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC9(const char *groupname)
{
	struct ifgroupreq	 ifgr;
	struct ifg_req		*ifg;
	int			 len, cnt = 0;
	int			 s;

	s = FUNC7(AF_LOCAL, SOCK_DGRAM, 0);
	if (s == -1)
		FUNC2(1, "socket(AF_LOCAL,SOCK_DGRAM)");
	FUNC0(&ifgr, sizeof(ifgr));
	FUNC8(ifgr.ifgr_name, groupname, sizeof(ifgr.ifgr_name));
	if (FUNC5(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1) {
		if (errno == EINVAL || errno == ENOTTY ||
		    errno == ENOENT)
			FUNC3(exit_code);
		else
			FUNC2(1, "SIOCGIFGMEMB");
	}

	len = ifgr.ifgr_len;
	if ((ifgr.ifgr_groups = FUNC1(1, len)) == NULL)
		FUNC2(1, "printgroup");
	if (FUNC5(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1)
		FUNC2(1, "SIOCGIFGMEMB");

	for (ifg = ifgr.ifgr_groups; ifg && len >= sizeof(struct ifg_req);
	    ifg++) {
		len -= sizeof(struct ifg_req);
		FUNC6("%s\n", ifg->ifgrq_member);
		cnt++;
	}
	FUNC4(ifgr.ifgr_groups);

	FUNC3(exit_code);
}