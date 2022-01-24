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
struct socket_info {scalar_t__ bound; scalar_t__ family; int peername_len; int /*<<< orphan*/  peername; } ;
struct sockaddr_un {int dummy; } ;
typedef  struct sockaddr {scalar_t__ sa_family; } const sockaddr ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ EHOSTUNREACH ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  SWRAP_CONNECT_ACK ; 
 int /*<<< orphan*/  SWRAP_CONNECT_RECV ; 
 int /*<<< orphan*/  SWRAP_CONNECT_SEND ; 
 int /*<<< orphan*/  SWRAP_CONNECT_UNREACH ; 
 scalar_t__ errno ; 
 struct socket_info* FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr const*,int) ; 
 int FUNC2 (struct socket_info*,struct sockaddr const*,int,struct sockaddr_un*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr const*,int) ; 
 int FUNC4 (struct socket_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_info*,struct sockaddr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(int s, const struct sockaddr *serv_addr, socklen_t addrlen)
{
	int ret;
	struct sockaddr_un un_addr;
	struct socket_info *si = FUNC0(s);

	if (!si) {
		return FUNC1(s, serv_addr, addrlen);
	}

	if (si->bound == 0) {
		ret = FUNC4(si);
		if (ret == -1) return -1;
	}

	if (si->family != serv_addr->sa_family) {
		errno = EINVAL;
		return -1;
	}

	ret = FUNC2(si, (const struct sockaddr *)serv_addr, addrlen, &un_addr, 0, NULL);
	if (ret == -1) return -1;

	FUNC5(si, serv_addr, SWRAP_CONNECT_SEND, NULL, 0);

	ret = FUNC1(s, (struct sockaddr *)&un_addr,
			   sizeof(struct sockaddr_un));

	/* to give better errors */
	if (ret == -1 && errno == ENOENT) {
		errno = EHOSTUNREACH;
	}

	if (ret == 0) {
		si->peername_len = addrlen;
		si->peername = FUNC3(serv_addr, addrlen);

		FUNC5(si, serv_addr, SWRAP_CONNECT_RECV, NULL, 0);
		FUNC5(si, serv_addr, SWRAP_CONNECT_ACK, NULL, 0);
	} else {
		FUNC5(si, serv_addr, SWRAP_CONNECT_UNREACH, NULL, 0);
	}

	return ret;
}