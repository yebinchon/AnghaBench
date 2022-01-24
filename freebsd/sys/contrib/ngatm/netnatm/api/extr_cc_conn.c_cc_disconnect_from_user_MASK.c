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
struct ccconn {TYPE_1__* user; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_act; int /*<<< orphan*/  connq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccconn*,char*,char*) ; 
 int /*<<< orphan*/  connq_link ; 

void
FUNC2(struct ccconn *conn)
{

	if (conn->user == NULL)
		FUNC1(conn, "no %s", "user");
	else {
		FUNC0(&conn->user->connq, conn, connq_link);
		conn->user->queue_act--;
		conn->user = NULL;
	}
}