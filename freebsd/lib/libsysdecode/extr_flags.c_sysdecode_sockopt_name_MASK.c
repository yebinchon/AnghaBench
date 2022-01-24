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

/* Variables and functions */
 int IPPROTO_IP ; 
 int IPPROTO_IPV6 ; 
 int IPPROTO_SCTP ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int IPPROTO_UDPLITE ; 
 int SOL_SOCKET ; 
 char const* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sockopt ; 
 int /*<<< orphan*/  sockoptip ; 
 int /*<<< orphan*/  sockoptipv6 ; 
 int /*<<< orphan*/  sockoptsctp ; 
 int /*<<< orphan*/  sockopttcp ; 
 int /*<<< orphan*/  sockoptudp ; 
 int /*<<< orphan*/  sockoptudplite ; 

const char *
FUNC1(int level, int optname)
{

	if (level == SOL_SOCKET)
		return (FUNC0(sockopt, optname));
	if (level == IPPROTO_IP)
		/* XXX: UNIX domain socket options use a level of 0 also. */
		return (FUNC0(sockoptip, optname));
	if (level == IPPROTO_IPV6)
		return (FUNC0(sockoptipv6, optname));
	if (level == IPPROTO_SCTP)
		return (FUNC0(sockoptsctp, optname));
	if (level == IPPROTO_TCP)
		return (FUNC0(sockopttcp, optname));
	if (level == IPPROTO_UDP)
		return (FUNC0(sockoptudp, optname));
	if (level == IPPROTO_UDPLITE)
		return (FUNC0(sockoptudplite, optname));
	return (NULL);
}