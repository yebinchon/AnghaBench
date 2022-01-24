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
struct TYPE_2__ {scalar_t__ request_tty; int /*<<< orphan*/ * control_path; } ;

/* Variables and functions */
 scalar_t__ REQUEST_TTY_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int muxserver_sock ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(int i)
{
	FUNC2(options.request_tty == REQUEST_TTY_FORCE);
	FUNC1();
	if (options.control_path != NULL && muxserver_sock != -1)
		FUNC4(options.control_path);
	FUNC3();
	FUNC0(i);
}