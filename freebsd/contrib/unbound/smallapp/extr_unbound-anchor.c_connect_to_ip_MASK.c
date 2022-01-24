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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ip_list {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ip_list*) ; 

__attribute__((used)) static int
FUNC5(struct ip_list* ip)
{
	int fd;
	FUNC4("connect to", ip);
	fd = FUNC3(ip->len==(socklen_t)sizeof(struct sockaddr_in)?
		AF_INET:AF_INET6, SOCK_STREAM, 0);
	if(fd == -1) {
		FUNC2("socket");
		return -1;
	}
	if(FUNC0(fd, (struct sockaddr*)&ip->addr, ip->len) < 0) {
		FUNC2("connect");
		FUNC1(fd);
		return -1;
	}
	return fd;
}