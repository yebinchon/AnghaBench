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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct proto_conn {scalar_t__ pc_magic; int /*<<< orphan*/ * pc_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PROTO_CONN_MAGIC ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int FUNC1 (struct proto_conn const*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 

int
FUNC3(const struct proto_conn *conn, int timeout)
{
	struct timeval tv;
	int fd;

	FUNC0(conn != NULL);
	FUNC0(conn->pc_magic == PROTO_CONN_MAGIC);
	FUNC0(conn->pc_proto != NULL);

	fd = FUNC1(conn);
	if (fd == -1)
		return (-1);

	tv.tv_sec = timeout;
	tv.tv_usec = 0;
	if (FUNC2(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv)) == -1)
		return (-1);
	if (FUNC2(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)) == -1)
		return (-1);

	return (0);
}