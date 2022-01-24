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
typedef  int /*<<< orphan*/  un_addr ;
struct socket_info {int /*<<< orphan*/  family; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWRAP_RECVFROM ; 
 struct socket_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,void*,size_t,int,struct sockaddr*,int*) ; 
 int FUNC3 (struct socket_info*,struct sockaddr_un*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket_info*,struct sockaddr*,int /*<<< orphan*/ ,void*,int) ; 

ssize_t FUNC5(int s, void *buf, size_t len, int flags, struct sockaddr *from, socklen_t *fromlen)
{
	struct sockaddr_un un_addr;
	socklen_t un_addrlen = sizeof(un_addr);
	int ret;
	struct socket_info *si = FUNC0(s);

	if (!si) {
		return FUNC2(s, buf, len, flags, from, fromlen);
	}

	/* irix 6.4 forgets to null terminate the sun_path string :-( */
	FUNC1(&un_addr, 0, sizeof(un_addr));
	ret = FUNC2(s, buf, len, flags, (struct sockaddr *)&un_addr, &un_addrlen);
	if (ret == -1)
		return ret;

	if (FUNC3(si, &un_addr, un_addrlen,
				     si->family, from, fromlen) == -1) {
		return -1;
	}

	FUNC4(si, from, SWRAP_RECVFROM, buf, ret);

	return ret;
}