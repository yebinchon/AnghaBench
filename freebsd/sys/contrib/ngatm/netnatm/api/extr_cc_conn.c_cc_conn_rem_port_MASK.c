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
struct ccconn {TYPE_1__* cc; int /*<<< orphan*/ * port; } ;
struct TYPE_2__ {int /*<<< orphan*/  orphaned_conns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccconn*,char*,char*) ; 
 int /*<<< orphan*/  port_link ; 

void
FUNC3(struct ccconn *conn)
{

	if (conn->port == NULL) {
		FUNC2(conn, "conn not on any %s", "port");
		return;
	}
	FUNC1(conn, port_link);
	conn->port = NULL;
	FUNC0(&conn->cc->orphaned_conns, conn, port_link);
}