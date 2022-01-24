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
struct proto_conn {scalar_t__ pc_magic; scalar_t__ pc_side; int /*<<< orphan*/ * pc_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PROTO_CONN_MAGIC ; 
 scalar_t__ PROTO_SIDE_CLIENT ; 
 scalar_t__ PROTO_SIDE_SERVER_LISTEN ; 
 scalar_t__ PROTO_SIDE_SERVER_WORK ; 
 int /*<<< orphan*/  FUNC1 (struct proto_conn*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct proto_conn*) ; 

__attribute__((used)) static void
FUNC3(struct proto_conn *conn)
{

	FUNC0(conn != NULL);
	FUNC0(conn->pc_magic == PROTO_CONN_MAGIC);
	FUNC0(conn->pc_side == PROTO_SIDE_CLIENT ||
	    conn->pc_side == PROTO_SIDE_SERVER_LISTEN ||
	    conn->pc_side == PROTO_SIDE_SERVER_WORK);
	FUNC0(conn->pc_proto != NULL);

	FUNC1(conn, sizeof(*conn));
	FUNC2(conn);
}