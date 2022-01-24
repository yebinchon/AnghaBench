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
struct socket_info {int myname_len; int bound; int /*<<< orphan*/  bcast; int /*<<< orphan*/  myname; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
typedef  struct sockaddr const sockaddr ;
typedef  int socklen_t ;

/* Variables and functions */
 struct socket_info* FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr const*,int) ; 
 int FUNC2 (struct socket_info*,struct sockaddr const*,int,struct sockaddr_un*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int s, const struct sockaddr *myaddr, socklen_t addrlen)
{
	int ret;
	struct sockaddr_un un_addr;
	struct socket_info *si = FUNC0(s);

	if (!si) {
		return FUNC1(s, myaddr, addrlen);
	}

	si->myname_len = addrlen;
	si->myname = FUNC3(myaddr, addrlen);

	ret = FUNC2(si, (const struct sockaddr *)myaddr, addrlen, &un_addr, 1, &si->bcast);
	if (ret == -1) return -1;

	FUNC4(un_addr.sun_path);

	ret = FUNC1(s, (struct sockaddr *)&un_addr,
			sizeof(struct sockaddr_un));

	if (ret == 0) {
		si->bound = 1;
	}

	return ret;
}