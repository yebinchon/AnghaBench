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
typedef  int /*<<< orphan*/  getbuf ;

/* Variables and functions */
 int IPPROTO_IP ; 
 int IPPROTO_IPV6 ; 
 int IPV6_IPSEC_POLICY ; 
 int IP_IPSEC_POLICY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  PF_INET 129 
#define  PF_INET6 128 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int,int,char*,int*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int,int,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(char *policy, int family)
{
	int so, proto, optname;
	int len;
	char getbuf[1024];

	switch (family) {
	case PF_INET:
		proto = IPPROTO_IP;
		optname = IP_IPSEC_POLICY;
		break;
	case PF_INET6:
		proto = IPPROTO_IPV6;
		optname = IPV6_IPSEC_POLICY;
		break;
	}

	if ((so = FUNC10(family, SOCK_DGRAM, 0)) < 0)
		FUNC7("socket");

	if (FUNC9(so, proto, optname, policy, FUNC0(policy)) < 0)
		FUNC7("setsockopt");

	len = sizeof(getbuf);
	FUNC6(getbuf, 0, sizeof(getbuf));
	if (FUNC3(so, proto, optname, getbuf, &len) < 0)
		FUNC7("getsockopt");

    {
	char *buf = NULL;

	FUNC8("\tgetlen:%d\n", len);

	if ((buf = FUNC4(getbuf, NULL)) == NULL)
		FUNC5();
	else
		FUNC8("\t[%s]\n", buf);

	FUNC2(buf);
    }

	FUNC1 (so);
}