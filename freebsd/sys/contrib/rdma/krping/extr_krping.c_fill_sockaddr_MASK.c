#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; scalar_t__ sin_family; } ;
struct krping_cb {scalar_t__ addr_type; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sockaddr_storage *sin, struct krping_cb *cb)
{
	FUNC1(sin, 0, sizeof(*sin));

	if (cb->addr_type == AF_INET) {
		struct sockaddr_in *sin4 = (struct sockaddr_in *)sin;
		sin4->sin_len = sizeof(*sin4);
		sin4->sin_family = AF_INET;
		FUNC0((void *)&sin4->sin_addr.s_addr, cb->addr, 4);
		sin4->sin_port = cb->port;
	} else if (cb->addr_type == AF_INET6) {
		struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sin;
		sin6->sin6_len = sizeof(*sin6);
		sin6->sin6_family = AF_INET6;
		FUNC0((void *)&sin6->sin6_addr, cb->addr, 16);
		sin6->sin6_port = cb->port;
	}
}