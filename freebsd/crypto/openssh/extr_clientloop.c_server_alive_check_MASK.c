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
struct TYPE_2__ {scalar_t__ server_alive_count_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_GLOBAL_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ options ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{
	if (FUNC3() > options.server_alive_count_max) {
		FUNC2("Timeout, server %s not responding.", host);
		FUNC0(255);
	}
	FUNC7(SSH2_MSG_GLOBAL_REQUEST);
	FUNC5("keepalive@openssh.com");
	FUNC4(1);     /* boolean: want reply */
	FUNC6();
	/* Insert an empty placeholder to maintain ordering */
	FUNC1(NULL, NULL);
}