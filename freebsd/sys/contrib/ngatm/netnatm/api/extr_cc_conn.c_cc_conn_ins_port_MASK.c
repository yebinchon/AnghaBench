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
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct ccport {int /*<<< orphan*/  conn_list; TYPE_1__ param; } ;
struct ccconn {struct ccport* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccconn*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccconn*) ; 
 int /*<<< orphan*/  port_link ; 

void
FUNC4(struct ccconn *conn, struct ccport *port)
{

	if (conn->port != NULL) {
		FUNC2(conn, "conn is already on port %u",
		    conn->port->param.port);
		FUNC3(conn);
	}
	FUNC1(conn, port_link);

	conn->port = port;
	FUNC0(&port->conn_list, conn, port_link);

}