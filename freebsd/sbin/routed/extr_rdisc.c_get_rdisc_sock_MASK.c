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

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ rdisc_sock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	if (rdisc_sock < 0) {
		rdisc_sock = FUNC3(AF_INET, SOCK_RAW, IPPROTO_ICMP);
		if (rdisc_sock < 0)
			FUNC0(1,"rdisc_sock = socket()");
		FUNC2(rdisc_sock,"rdisc_sock");
		FUNC1();
	}
}