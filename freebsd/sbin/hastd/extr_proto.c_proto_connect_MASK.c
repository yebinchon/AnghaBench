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
struct proto_conn {scalar_t__ pc_magic; scalar_t__ pc_side; int /*<<< orphan*/  pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int (* prt_connect ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PROTO_CONN_MAGIC ; 
 scalar_t__ PROTO_SIDE_CLIENT ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct proto_conn *conn, int timeout)
{
	int ret;

	FUNC0(conn != NULL);
	FUNC0(conn->pc_magic == PROTO_CONN_MAGIC);
	FUNC0(conn->pc_side == PROTO_SIDE_CLIENT);
	FUNC0(conn->pc_proto != NULL);
	FUNC0(conn->pc_proto->prt_connect != NULL);
	FUNC0(timeout >= -1);

	ret = conn->pc_proto->prt_connect(conn->pc_ctx, timeout);
	if (ret != 0) {
		errno = ret;
		return (-1);
	}

	return (0);
}