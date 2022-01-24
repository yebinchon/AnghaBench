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
struct ssh {int dummy; } ;
struct monitor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_IN ; 
 int /*<<< orphan*/  MODE_OUT ; 
 struct ssh* active_state ; 
 int /*<<< orphan*/ * child_state ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct monitor *pmonitor)
{
	struct ssh *ssh = active_state;	/* XXX */

	FUNC0(ssh, MODE_IN);
	FUNC0(ssh, MODE_OUT);
	FUNC1(child_state);
	child_state = NULL;
}