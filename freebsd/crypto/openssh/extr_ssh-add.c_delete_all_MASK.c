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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC2(int agent_fd)
{
	int ret = -1;

	/*
	 * Since the agent might be forwarded, old or non-OpenSSH, when asked
	 * to remove all keys, attempt to remove both protocol v.1 and v.2
	 * keys.
	 */
	if (FUNC1(agent_fd, 2) == 0)
		ret = 0;
	/* ignore error-code for ssh1 */
	FUNC1(agent_fd, 1);

	if (ret == 0)
		FUNC0(stderr, "All identities removed.\n");
	else
		FUNC0(stderr, "Failed to remove all identities.\n");

	return ret;
}