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
struct ccreq {int /*<<< orphan*/  addr_list; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  cookies; TYPE_1__* cc; } ;
struct ccport {int /*<<< orphan*/  addr_list; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  cookies; TYPE_1__* cc; } ;
struct ccaddr {int /*<<< orphan*/  addr_list; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  cookies; TYPE_1__* cc; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ccreq* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ccreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  node_link ; 
 int /*<<< orphan*/  port_link ; 

void
FUNC6(struct ccport *port, int shutdown)
{
	struct ccaddr *addr;
	struct ccreq *r;

	FUNC4(&port->cc->port_list, port, node_link);

	while ((r = FUNC3(&port->cookies)) != NULL) {
		FUNC4(&port->cookies, r, link);
		FUNC0(r);
	}

	/*
	 * Abort all connections.
	 */
	while (!FUNC1(&port->conn_list))
		FUNC5(FUNC2(&port->conn_list), shutdown);

	/*
	 * Free addresses.
	 */
	while ((addr = FUNC3(&port->addr_list)) != NULL) {
		FUNC4(&port->addr_list, addr, port_link);
		FUNC0(addr);
	}

	FUNC0(port);
}