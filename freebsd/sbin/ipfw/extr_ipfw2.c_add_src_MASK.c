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
typedef  scalar_t__ u_char ;
struct tidx {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_insn ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 scalar_t__ IPPROTO_IP ; 
 scalar_t__ IPPROTO_IPV6 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int,struct tidx*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int,struct tidx*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,struct in6_addr*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static ipfw_insn *
FUNC6(ipfw_insn *cmd, char *av, u_char proto, int cblen, struct tidx *tstate)
{
	struct in6_addr a;
	char *host, *ch, buf[INET6_ADDRSTRLEN];
	ipfw_insn *ret = NULL;
	int len;

	/* Copy first address in set if needed */
	if ((ch = FUNC5(av, "/,")) != NULL) {
		len = ch - av;
		FUNC4(buf, av, sizeof(buf));
		if (len < sizeof(buf))
			buf[len] = '\0';
		host = buf;
	} else
		host = av;

	if (proto == IPPROTO_IPV6  || FUNC3(av, "me6") == 0 ||
	    FUNC2(AF_INET6, host, &a) == 1)
		ret = FUNC1(cmd, av, cblen, tstate);
	/* XXX: should check for IPv4, not !IPv6 */
	if (ret == NULL && (proto == IPPROTO_IP || FUNC3(av, "me") == 0 ||
	    FUNC2(AF_INET6, host, &a) != 1))
		ret = FUNC0(cmd, av, cblen, tstate);
	if (ret == NULL && FUNC3(av, "any") != 0)
		ret = cmd;

	return ret;
}