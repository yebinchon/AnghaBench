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
struct ggd_connection {int c_sendfd; int c_recvfd; struct ggd_connection* c_path; int /*<<< orphan*/  c_srcip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ggd_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  c_next ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ggd_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct ggd_connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ggd_connection *conn)
{

	FUNC0(conn, c_next);
	FUNC3(LOG_DEBUG, "Connection removed [%s %s].",
	    FUNC4(conn->c_srcip), conn->c_path);
	if (conn->c_sendfd != -1)
		FUNC1(conn->c_sendfd);
	if (conn->c_recvfd != -1)
		FUNC1(conn->c_recvfd);
	FUNC2(conn->c_path);
	FUNC2(conn);
}