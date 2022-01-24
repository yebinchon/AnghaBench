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
struct proto_conn {scalar_t__ pc_magic; int /*<<< orphan*/  pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* prt_close ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PROTO_CONN_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct proto_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct proto_conn *conn)
{

	FUNC0(conn != NULL);
	FUNC0(conn->pc_magic == PROTO_CONN_MAGIC);
	FUNC0(conn->pc_proto != NULL);
	FUNC0(conn->pc_proto->prt_close != NULL);

	conn->pc_proto->prt_close(conn->pc_ctx);
	FUNC1(conn);
}