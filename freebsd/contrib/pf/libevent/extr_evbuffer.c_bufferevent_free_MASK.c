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
struct bufferevent {int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 

void
FUNC3(struct bufferevent *bufev)
{
	FUNC1(&bufev->ev_read);
	FUNC1(&bufev->ev_write);

	FUNC0(bufev->input);
	FUNC0(bufev->output);

	FUNC2(bufev);
}