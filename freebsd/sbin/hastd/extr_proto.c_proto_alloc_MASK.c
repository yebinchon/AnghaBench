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
struct proto_conn {int pc_side; int /*<<< orphan*/  pc_magic; struct proto* pc_proto; } ;
struct proto {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PROTO_CONN_MAGIC ; 
 int PROTO_SIDE_CLIENT ; 
 int PROTO_SIDE_SERVER_LISTEN ; 
 int PROTO_SIDE_SERVER_WORK ; 
 struct proto_conn* FUNC1 (int) ; 

__attribute__((used)) static struct proto_conn *
FUNC2(struct proto *proto, int side)
{
	struct proto_conn *conn;

	FUNC0(proto != NULL);
	FUNC0(side == PROTO_SIDE_CLIENT ||
	    side == PROTO_SIDE_SERVER_LISTEN ||
	    side == PROTO_SIDE_SERVER_WORK);

	conn = FUNC1(sizeof(*conn));
	if (conn != NULL) {
		conn->pc_proto = proto;
		conn->pc_side = side;
		conn->pc_magic = PROTO_CONN_MAGIC;
	}
	return (conn);
}