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
struct TYPE_2__ {scalar_t__ forward_agent; } ;

/* Variables and functions */
 int SSH_ERR_AGENT_NOT_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int r;

	if (options.forward_agent) {
		/* Clear agent forwarding if we don't have an agent. */
		if ((r = FUNC2(NULL)) != 0) {
			options.forward_agent = 0;
			if (r != SSH_ERR_AGENT_NOT_PRESENT)
				FUNC0("ssh_get_authentication_socket: %s",
				    FUNC1(r));
		}
	}
}