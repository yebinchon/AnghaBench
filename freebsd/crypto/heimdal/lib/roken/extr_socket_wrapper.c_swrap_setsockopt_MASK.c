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
struct socket_info {int family; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
#define  AF_INET 128 
 int /*<<< orphan*/  ENOPROTOOPT ; 
 int SOL_SOCKET ; 
 int /*<<< orphan*/  errno ; 
 struct socket_info* FUNC0 (int) ; 
 int FUNC1 (int,int,int,void const*,int /*<<< orphan*/ ) ; 

int FUNC2(int s, int  level,  int  optname,  const  void  *optval, socklen_t optlen)
{
	struct socket_info *si = FUNC0(s);

	if (!si) {
		return FUNC1(s, level, optname, optval, optlen);
	}

	if (level == SOL_SOCKET) {
		return FUNC1(s, level, optname, optval, optlen);
	}

	switch (si->family) {
	case AF_INET:
		return 0;
	default:
		errno = ENOPROTOOPT;
		return -1;
	}
}