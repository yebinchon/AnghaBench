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
typedef  scalar_t__ u_int ;
struct sftp_conn {scalar_t__ version; int /*<<< orphan*/  msg_id; } ;
typedef  int /*<<< orphan*/  Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_FXP_LSTAT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sftp_conn*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct sftp_conn*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sftp_conn*,scalar_t__,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

Attrib *
FUNC6(struct sftp_conn *conn, const char *path, int quiet)
{
	u_int id;

	if (conn->version == 0) {
		if (quiet)
			FUNC0("Server version does not support lstat operation");
		else
			FUNC3("Server version does not support lstat operation");
		return(FUNC1(conn, path, quiet));
	}

	id = conn->msg_id++;
	FUNC4(conn, id, SSH2_FXP_LSTAT, path,
	    FUNC5(path));

	return(FUNC2(conn, id, quiet));
}