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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const char *argv0)
{
	FUNC0("Usage:\n");
	FUNC0("  %s            start an asyncwatch process\n", argv0);
	FUNC0("\n");
	FUNC0("Options:\n");
	FUNC0("  -d, --ib-dev=<dev>     use IB device <dev> (default first device found)\n");
	FUNC0("  -h, --help             print a help text and exit\n");
}