#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rt_msghdr {int /*<<< orphan*/  rtm_type; } ;
struct rt_addrinfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 TYPE_1__* FUNC0 (struct rt_addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ rdisc_ok ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct rt_msghdr *rtm,
	 struct rt_addrinfo *info)
{
	if (FUNC0(info) == 0
	    || FUNC0(info)->sa_family != AF_INET) {
		FUNC5("ignore %s without gateway",
			  FUNC4(rtm->rtm_type));
		return;
	}

	if (rdisc_ok)
		FUNC3(FUNC1(FUNC0(info)));
	FUNC2(FUNC1(FUNC0(info)));
}