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
struct TYPE_2__ {int /*<<< orphan*/  rmx_locks; } ;
struct rt_msghdr {int /*<<< orphan*/  rtm_addrs; int /*<<< orphan*/  rtm_inits; TYPE_1__ rtm_rmx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metricnames ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(struct rt_msghdr *rtm, size_t msglen)
{

	(void)FUNC3("\nlocks: ");
	FUNC2(rtm->rtm_rmx.rmx_locks, metricnames);
	(void)FUNC3(" inits: ");
	FUNC2(rtm->rtm_inits, metricnames);
	if (msglen > sizeof(struct rt_msghdr))
		FUNC1(((char *)(rtm + 1)), rtm->rtm_addrs,
		    msglen - sizeof(struct rt_msghdr));
	else
		(void)FUNC0(stdout);
}