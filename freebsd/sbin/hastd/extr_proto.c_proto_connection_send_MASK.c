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
struct TYPE_2__ {int (* prt_send ) (int /*<<< orphan*/ ,unsigned char const*,scalar_t__,int) ;char* prt_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PROTO_CONN_MAGIC ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct proto_conn*) ; 
 int FUNC2 (struct proto_conn*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char const*,scalar_t__,int) ; 

int
FUNC5(const struct proto_conn *conn, struct proto_conn *mconn)
{
	const char *protoname;
	int ret, fd;

	FUNC0(conn != NULL);
	FUNC0(conn->pc_magic == PROTO_CONN_MAGIC);
	FUNC0(conn->pc_proto != NULL);
	FUNC0(conn->pc_proto->prt_send != NULL);
	FUNC0(mconn != NULL);
	FUNC0(mconn->pc_magic == PROTO_CONN_MAGIC);
	FUNC0(mconn->pc_proto != NULL);
	fd = FUNC2(mconn);
	FUNC0(fd >= 0);
	protoname = mconn->pc_proto->prt_name;
	FUNC0(protoname != NULL);

	ret = conn->pc_proto->prt_send(conn->pc_ctx,
	    (const unsigned char *)protoname, FUNC3(protoname) + 1, fd);
	FUNC1(mconn);
	if (ret != 0) {
		errno = ret;
		return (-1);
	}
	return (0);
}