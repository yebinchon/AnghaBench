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
 int SOL_SOCKET ; 
 int /*<<< orphan*/  cmsgtypeip ; 
 int /*<<< orphan*/  cmsgtypeipv6 ; 
 int /*<<< orphan*/  cmsgtypesctp ; 
 int /*<<< orphan*/  cmsgtypesocket ; 
 char const* FUNC0 (int /*<<< orphan*/ ,int) ; 

const char *
FUNC1(int cmsg_level, int cmsg_type)
{

	if (cmsg_level == SOL_SOCKET)
		return (FUNC0(cmsgtypesocket, cmsg_type));
	if (cmsg_level == IPPROTO_IP)
		return (FUNC0(cmsgtypeip, cmsg_type));
	if (cmsg_level == IPPROTO_IPV6)
		return (FUNC0(cmsgtypeipv6, cmsg_type));
	if (cmsg_level == IPPROTO_SCTP)
		return (FUNC0(cmsgtypesctp, cmsg_type));
	return (NULL);
}