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
struct event_iocp_port {struct event_iocp_port* threads; int /*<<< orphan*/  shutdownSemaphore; int /*<<< orphan*/  port; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event_iocp_port*) ; 

__attribute__((used)) static void
FUNC3(struct event_iocp_port *port)
{
	FUNC1(&port->lock);
	FUNC0(port->port);
	FUNC0(port->shutdownSemaphore);
	FUNC2(port->threads);
	FUNC2(port);
}