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
struct TYPE_2__ {scalar_t__ control_persist; int /*<<< orphan*/ * control_path; } ;

/* Variables and functions */
 int muxserver_sock ; 
 scalar_t__ no_shell_flag ; 
 TYPE_1__ options ; 
 int session_closed ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{
	if (options.control_path != NULL && muxserver_sock != -1)
		FUNC1(options.control_path);
	/*
	 * If we are in persist mode, or don't have a shell, signal that we
	 * should close when all active channels are closed.
	 */
	if (options.control_persist || no_shell_flag) {
		session_closed = 1;
		FUNC0("[stopped mux]");
	}
}