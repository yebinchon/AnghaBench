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
typedef  int /*<<< orphan*/  u_int ;
struct ccport {scalar_t__ admin; int /*<<< orphan*/  conn_list; } ;
struct ccdata {int dummy; } ;

/* Variables and functions */
 scalar_t__ CCPORT_RUNNING ; 
 scalar_t__ CCPORT_STOPPED ; 
 int ENOENT ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ccport* FUNC3 (struct ccdata*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct ccdata *cc, u_int portno)
{
	struct ccport *port;

	if ((port = FUNC3(cc, portno)) == NULL)
		return (ENOENT);
	if (port->admin != CCPORT_RUNNING)
		return (ENOTCONN);

	port->admin = CCPORT_STOPPED;

	/*
	 * Abort all connections.
	 */
	while (!FUNC0(&port->conn_list))
		FUNC2(FUNC1(&port->conn_list));

	return (0);
}