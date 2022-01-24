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
struct sockaddr_storage {int dummy; } ;
struct outside_network {int /*<<< orphan*/  udp_buff; int /*<<< orphan*/  base; } ;
struct comm_point {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  comm_point_callback_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct comm_point* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (struct outside_network*,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

struct comm_point*
FUNC4(struct outside_network* outnet,
	comm_point_callback_type* cb, void* cb_arg,
	struct sockaddr_storage* to_addr, socklen_t to_addrlen)
{
	struct comm_point* cp;
	int fd = FUNC2(outnet, to_addr, to_addrlen);
	if(fd == -1) {
		return NULL;
	}
	cp = FUNC1(outnet->base, fd, outnet->udp_buff,
		cb, cb_arg);
	if(!cp) {
		FUNC3("malloc failure");
		FUNC0(fd);
		return NULL;
	}
	return cp;
}