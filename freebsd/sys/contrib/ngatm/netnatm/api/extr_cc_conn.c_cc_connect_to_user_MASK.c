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
struct ccuser {int /*<<< orphan*/  queue_act; int /*<<< orphan*/  connq; } ;
struct ccconn {struct ccuser* user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccconn*,char*,struct ccuser*) ; 
 int /*<<< orphan*/  connq_link ; 

void
FUNC2(struct ccconn *conn, struct ccuser *user)
{

	if (conn->user != NULL)
		FUNC1(conn, "still connected to %p", conn->user);
	conn->user = user;
	FUNC0(&user->connq, conn, connq_link);
	conn->user->queue_act++;
}