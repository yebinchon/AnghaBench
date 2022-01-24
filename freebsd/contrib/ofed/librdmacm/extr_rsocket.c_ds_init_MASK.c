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
struct rsocket {scalar_t__ udp_sock; scalar_t__ epfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rsocket *rs, int domain)
{
	rs->udp_sock = FUNC1(domain, SOCK_DGRAM, 0);
	if (rs->udp_sock < 0)
		return rs->udp_sock;

	rs->epfd = FUNC0(2);
	if (rs->epfd < 0)
		return rs->epfd;

	return 0;
}