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
typedef  int /*<<< orphan*/  ipfw_insn ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  O_IP4 ; 
 int /*<<< orphan*/  O_IP6 ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static ipfw_insn *
FUNC4(ipfw_insn *cmd, char *av, u_char *protop)
{
	u_char proto = IPPROTO_IP;

	if (FUNC0(av, "all") == 0 || FUNC3(av, "ip") == 0)
		; /* do not set O_IP4 nor O_IP6 */
	else if (FUNC3(av, "ipv4") == 0 || FUNC3(av, "ip4") == 0)
		/* explicit "just IPv4" rule */
		FUNC2(cmd, O_IP4, 0, 0);
	else if (FUNC3(av, "ipv6") == 0 || FUNC3(av, "ip6") == 0) {
		/* explicit "just IPv6" rule */
		proto = IPPROTO_IPV6;
		FUNC2(cmd, O_IP6, 0, 0);
	} else
		return FUNC1(cmd, av, protop);

	*protop = proto;
	return cmd;
}