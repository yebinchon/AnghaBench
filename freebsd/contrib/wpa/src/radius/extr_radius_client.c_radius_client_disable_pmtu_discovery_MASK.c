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
typedef  int /*<<< orphan*/  action ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_MTU_DISCOVER ; 
 int IP_PMTUDISC_DONT ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int s)
{
	int r = -1;
#if defined(IP_MTU_DISCOVER) && defined(IP_PMTUDISC_DONT)
	/* Turn off Path MTU discovery on IPv4/UDP sockets. */
	int action = IP_PMTUDISC_DONT;
	r = setsockopt(s, IPPROTO_IP, IP_MTU_DISCOVER, &action,
		       sizeof(action));
	if (r == -1)
		wpa_printf(MSG_ERROR, "RADIUS: Failed to set IP_MTU_DISCOVER: %s",
			   strerror(errno));
#endif
	return r;
}