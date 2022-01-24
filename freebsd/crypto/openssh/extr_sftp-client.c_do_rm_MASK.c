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
struct sftp_conn {int /*<<< orphan*/  msg_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_FXP_REMOVE ; 
 scalar_t__ SSH2_FX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct sftp_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sftp_conn*,scalar_t__,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int
FUNC6(struct sftp_conn *conn, const char *path)
{
	u_int status, id;

	FUNC0("Sending SSH2_FXP_REMOVE \"%s\"", path);

	id = conn->msg_id++;
	FUNC4(conn, id, SSH2_FXP_REMOVE, path, FUNC5(path));
	status = FUNC3(conn, id);
	if (status != SSH2_FX_OK)
		FUNC1("Couldn't delete file: %s", FUNC2(status));
	return status == SSH2_FX_OK ? 0 : -1;
}